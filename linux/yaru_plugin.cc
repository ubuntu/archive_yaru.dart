#include "include/yaru/yaru_plugin.h"

#include <flutter_linux/flutter_linux.h>
#include <gtk/gtk.h>

#define YARU_PLUGIN(obj) \
  (G_TYPE_CHECK_INSTANCE_CAST((obj), yaru_plugin_get_type(), YaruPlugin))

struct _YaruPlugin {
  GObject parent_instance;
  gint theme_name_changed_id;
};

G_DEFINE_TYPE(YaruPlugin, yaru_plugin, g_object_get_type())

static FlValue* get_theme_name() {
  GtkSettings* settings = gtk_settings_get_default();
  if (settings == nullptr) {
    return fl_value_new_null();
  }

  g_autofree gchar* value = nullptr;
  g_object_get(settings, "gtk-theme-name", &value, nullptr);
  return fl_value_new_string(value);
}

// Called when a method call is received from Flutter.
static void yaru_plugin_handle_method_call(YaruPlugin* self,
                                           FlMethodCall* method_call) {
  g_autoptr(FlMethodResponse) response = nullptr;

  const gchar* method = fl_method_call_get_name(method_call);

  if (strcmp(method, "getThemeName") == 0) {
    g_autoptr(FlValue) result = get_theme_name();
    response = FL_METHOD_RESPONSE(fl_method_success_response_new(result));
  } else {
    response = FL_METHOD_RESPONSE(fl_method_not_implemented_response_new());
  }

  fl_method_call_respond(method_call, response, nullptr);
}

static void yaru_plugin_dispose(GObject* object) {
  G_OBJECT_CLASS(yaru_plugin_parent_class)->dispose(object);
}

static void yaru_plugin_class_init(YaruPluginClass* klass) {
  G_OBJECT_CLASS(klass)->dispose = yaru_plugin_dispose;
}

static void yaru_plugin_init(YaruPlugin* self) {}

static void method_call_cb(FlMethodChannel* channel, FlMethodCall* method_call,
                           gpointer user_data) {
  YaruPlugin* plugin = YARU_PLUGIN(user_data);
  yaru_plugin_handle_method_call(plugin, method_call);
}

static void theme_name_changed_cb(GObject* object, GParamSpec* pspec,
                                  gpointer user_data) {
  FlEventChannel* channel = FL_EVENT_CHANNEL(user_data);
  g_autoptr(FlValue) event = get_theme_name();
  fl_event_channel_send(channel, event, nullptr, nullptr);
}

static FlMethodErrorResponse* listen_events_cb(FlEventChannel* channel,
                                               FlValue* args,
                                               gpointer user_data) {
  YaruPlugin* plugin = YARU_PLUGIN(user_data);
  if (plugin->theme_name_changed_id == 0) {
    plugin->theme_name_changed_id =
        g_signal_connect(gtk_settings_get_default(), "notify::gtk-theme-name",
                         G_CALLBACK(theme_name_changed_cb), channel);
  }
  return nullptr;
}

static FlMethodErrorResponse* cancel_events_cb(FlEventChannel* channel,
                                               FlValue* args,
                                               gpointer user_data) {
  YaruPlugin* plugin = YARU_PLUGIN(user_data);
  if (plugin->theme_name_changed_id != 0) {
    g_signal_handler_disconnect(gtk_settings_get_default(),
                                plugin->theme_name_changed_id);
    plugin->theme_name_changed_id = 0;
  }
  return nullptr;
}

void yaru_plugin_register_with_registrar(FlPluginRegistrar* registrar) {
  g_autoptr(YaruPlugin) plugin =
      YARU_PLUGIN(g_object_new(yaru_plugin_get_type(), nullptr));

  g_autoptr(FlStandardMethodCodec) codec = fl_standard_method_codec_new();
  FlBinaryMessenger* messenger = fl_plugin_registrar_get_messenger(registrar);

  g_autoptr(FlMethodChannel) method_channel =
      fl_method_channel_new(messenger, "yaru", FL_METHOD_CODEC(codec));
  fl_method_channel_set_method_call_handler(
      method_channel, method_call_cb, g_object_ref(plugin), g_object_unref);

  g_autoptr(FlEventChannel) event_channel =
      fl_event_channel_new(messenger, "yaru/events", FL_METHOD_CODEC(codec));
  fl_event_channel_set_stream_handlers(event_channel, listen_events_cb,
                                       cancel_events_cb, g_object_ref(plugin),
                                       g_object_unref);
}
