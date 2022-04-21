import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_example/main.dart';
import 'package:yaru_example/view/color_disk.dart';
import 'package:yaru_example/view/colors_view.dart';
import 'package:yaru_example/view/controls_view.dart';
import 'package:yaru_example/view/fonts_view.dart';
import 'package:yaru_example/view/inputs_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _HomePageState();
  int _counter = 0;

  void incrementCounter() {
    setState(() {
      _counter++;
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Yay! $_counter ❤️ for Yaru')));
    });
  }

  final textController = TextEditingController(
      text:
          'My code fails, I do not know why.\nMy code works, I do not know why.\nText in other scripts: Tamaziɣt Taqbaylit, 中文(简体), Čeština, Беларуская, Ελληνικά, עברית, Русский, བོད་ཡིག, Norsk bokmål.');

  int _selectedIndex = 0;
  final List<Widget> _views = <Widget>[
    FontsView(),
    ControlsView(),
    InputsView(),
    ColorsView()
  ];

  @override
  Widget build(BuildContext context) {
    final theme = YaruTheme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(
          width: 50,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(0),
                    shape: const CircleBorder()),
                onPressed: () => AppTheme.apply(context,
                    themeMode: theme.themeMode == ThemeMode.light
                        ? ThemeMode.dark
                        : ThemeMode.light),
                child: Icon(theme.themeMode == ThemeMode.light
                    ? Icons.dark_mode
                    : Icons.light_mode)),
          ),
        ),
        actions: [
          ColorDisk(
              color: theme.themeMode == ThemeMode.light
                  ? Colors.black
                  : Colors.white,
              selected: theme.highContrast == true,
              onPressed: () => AppTheme.apply(context, highContrast: true)),
          for (final accent in YaruAccent.values)
            ColorDisk(
              color: getYaruLightTheme(accent).primaryColor,
              selected: accent == theme.accent && theme.highContrast != true,
              onPressed: () =>
                  AppTheme.apply(context, accent: accent, highContrast: false),
            ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: _views[_selectedIndex],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.font_download_outlined),
              activeIcon: Icon(Icons.font_download),
              label: 'Fonts'),
          BottomNavigationBarItem(
              icon: Icon(Icons.radio_button_checked_outlined),
              activeIcon: Icon(Icons.radio_button_checked),
              label: 'Controls'),
          BottomNavigationBarItem(
              icon: Icon(Icons.text_fields),
              activeIcon: Icon(Icons.text_fields_outlined),
              label: 'Text Fields'),
          BottomNavigationBarItem(
              icon: Icon(Icons.color_lens_outlined),
              activeIcon: Icon(Icons.color_lens),
              label: 'Palette')
        ],
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {incrementCounter()},
        child: Icon(Icons.plus_one),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
