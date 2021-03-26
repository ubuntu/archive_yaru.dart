import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart' as yaru;

/// an `enum-like` class to facilitate `Yaru` themes in the state management
class SelectedTheme {
  /// a private constructor, too be used in the factories
  SelectedTheme._(this.theme, this.name);

  /// provides a ThemeData from `Yaru` package
  ThemeData theme;

  /// provides a human readable identifier for the `theme`
  String name;

  /// provides list of `themes`
  static Set<SelectedTheme> get values {
    return {
      SelectedTheme.standard(),
      SelectedTheme.dark(),
      SelectedTheme.light(),
    };
  }

  /// a factory for a `SelectedTheme` that holds `yaru.theme`
  factory SelectedTheme.standard() => SelectedTheme._(yaru.theme, 'standard');

  /// a factory for a `SelectedTheme` that holds `yaru.darkTheme`
  factory SelectedTheme.dark() => SelectedTheme._(yaru.darkTheme, 'dark');

  /// a factory for a `SelectedTheme` that holds `yaru.lightTheme`
  factory SelectedTheme.light() => SelectedTheme._(yaru.lightTheme, 'light');
}

final _yaru = ValueNotifier<SelectedTheme>(SelectedTheme.standard());
void main() => runApp(const _MyApp());

class _MyApp extends StatelessWidget {
  const _MyApp() : super(key: const ValueKey('MyApp'));

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<SelectedTheme>(
      child: const _MyHomePage(),
      valueListenable: _yaru,
      builder: (context, yaru, child) => MaterialApp(
        title: 'Yaru Example',
        theme: yaru.theme,
        home: child,
      ),
    );
  }
}

class _MyHomePage extends StatelessWidget {
  const _MyHomePage() : super(key: const ValueKey('MyHomePage'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ValueListenableBuilder<SelectedTheme>(
          valueListenable: _yaru,
          builder: (context, yaru, _) => Text(yaru.name),
        ),
        leading: PopupMenuButton<SelectedTheme>(
          onSelected: (value) => _yaru.value = value,
          itemBuilder: (context) => <PopupMenuItem<SelectedTheme>>[
            for (final theme in SelectedTheme.values)
              PopupMenuItem(
                value: theme,
                child: Text(theme.name),
              ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15.0),
        child: const ShowCase(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'This button does nothing',
        child: const Icon(Icons.add),
      ),
    );
  }
}

/// a Widget that demonstrates `Yaru` package theming and colors
class ShowCase extends StatelessWidget {
  /// allows a `const` constructor
  /// the key allows only one widget in the `tree`
  const ShowCase() : super(key: const ValueKey('ShowCase'));

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'headline1',
          style: Theme.of(context).textTheme.headline1,
        ),
        Text(
          'headline2',
          style: Theme.of(context).textTheme.headline2,
        ),
        Text(
          'headline3',
          style: Theme.of(context).textTheme.headline3,
        ),
        Text(
          'headline4',
          style: Theme.of(context).textTheme.headline4,
        ),
        Text(
          'headline5',
          style: Theme.of(context).textTheme.headline5,
        ),
        Text(
          'headline6',
          style: Theme.of(context).textTheme.headline6,
        ),
        Text(
          'subtitle1',
          style: Theme.of(context).textTheme.subtitle1,
        ),
        Text(
          'subtitle2',
          style: Theme.of(context).textTheme.subtitle2,
        ),
        Text(
          'bodyText1',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        Text(
          'bodyText2',
          style: Theme.of(context).textTheme.bodyText2,
        ),
        Text(
          'caption',
          style: Theme.of(context).textTheme.caption,
        ),
        Text(
          'button',
          style: Theme.of(context).textTheme.button,
        ),
        Text(
          'overline',
          style: Theme.of(context).textTheme.overline,
        ),
        Row(children: <Widget>[
          TextButton(
            onPressed: () => print('FlatButton'),
            child: const Text('Click me!'),
          ),
          const SizedBox(width: 15),
          TextButton(
            onPressed: null,
            child: const Text("Can't click me!"),
            autofocus: true,
          ),
        ]),
        Row(children: <Widget>[
          OutlinedButton(
            onPressed: () => print('OutlinedButton'),
            child: const Text('Click me!'),
          ),
          const SizedBox(width: 15),
          OutlinedButton(
            onPressed: null,
            child: const Text("Can't click me!"),
          ),
        ]),
        Row(children: <Widget>[
          ElevatedButton(
            onPressed: () => print('RaisedButton'),
            child: const Text('Click me!'),
          ),
          const SizedBox(width: 15),
          ElevatedButton(
            onPressed: null,
            child: const Text("Can't click me!"),
          ),
        ]),
        Row(
          children: <Widget>[
            DropdownButton<int>(
              onChanged: (value) => print('DropdownButton $value'),
              value: 1,
              items: <DropdownMenuItem<int>>[
                const DropdownMenuItem(
                  value: 1,
                  child: Text('One'),
                ),
                const DropdownMenuItem(
                  value: 2,
                  child: Text('Two'),
                ),
                const DropdownMenuItem(
                  value: 3,
                  child: Text('Three'),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Checkbox(onChanged: (value) {}, value: true),
                    const Text('Yes'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Checkbox(onChanged: (value) {}, value: false),
                    const Text('No'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: true,
                      onChanged: null,
                    ),
                    const Text('Disabled'),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Switch(onChanged: (value) {}, value: true),
                    const Text('Yes'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Switch(onChanged: (value) {}, value: false),
                    const Text('No'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Switch(
                      value: true,
                      onChanged: null,
                    ),
                    const Text('Disabled'),
                  ],
                ),
                Row(
                  children: <Widget>[CircularProgressIndicator()],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Radio(onChanged: (value) {}, value: 1, groupValue: 1),
                    const Text('Yes'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Radio(onChanged: (value) {}, value: 2, groupValue: 1),
                    const Text('No'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      value: 3,
                      groupValue: 1,
                      onChanged: null,
                    ),
                    const Text('Disabled'),
                  ],
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 15),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Username',
          ),
        ),
        const SizedBox(height: 15),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',
          ),
        ),
        const SizedBox(height: 15),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            errorText: "You're doing it wrong",
          ),
        ),
        const SizedBox(height: 15),
        const TextEditingShowCase(),
        const SizedBox(height: 15),
        Text('Yaru Colors', style: Theme.of(context).textTheme.headline4),
        const SizedBox(height: 15.0),
        Row(
          children: [
            Palette(
              name: 'orange',
              color: yaru.Colors.orange,
            ),
            const SizedBox(width: 25.0),
            Palette(
              name: 'lightAubergine',
              color: yaru.Colors.lightAubergine,
            ),
            const SizedBox(width: 25.0),
            Palette(
              name: 'midAubergine',
              color: yaru.Colors.midAubergine,
            ),
          ],
        ),
        const Divider(height: 50.0, color: Colors.black),
        Row(
          children: [
            Palette(
              name: 'canonicalAubergine',
              color: yaru.Colors.canonicalAubergine,
            ),
            const SizedBox(width: 25.0),
            Palette(
              name: 'darkAubergine',
              color: yaru.Colors.darkAubergine,
            ),
            const SizedBox(width: 25.0),
            Palette(
              name: 'warmGrey',
              color: yaru.Colors.warmGrey,
            ),
          ],
        ),
      ],
    );
  }
}

/// a Widget that demonstrates `Yaru` package fonts
class TextEditingShowCase extends StatefulWidget {
  /// allows a `const` constructor
  /// the key allows only one widget in the `tree`
  const TextEditingShowCase()
      : super(key: const ValueKey('TextEditingShowCase'));

  @override
  _TextEditingShowCaseState createState() => _TextEditingShowCaseState();
}

class _TextEditingShowCaseState extends State<TextEditingShowCase> {
  late final TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController()
      ..text = 'My code fails, I do not know why.\n'
          'My code works, I do not know why.\n'
          'Text in other scripts: '
          'Tamaziɣt Taqbaylit, '
          '中文(简体), '
          'Čeština, '
          'Беларуская, '
          'Ελληνικά, '
          'עברית, '
          'Русский, '
          'བོད་ཡིག, '
          'Norsk bokmål.';
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.multiline,
      controller: _controller,
      minLines: 5,
      maxLines: 5,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
      ),
    );
  }
}

/// a Widget that demonstrates `Yaru` package `MaterialColor`s
class Palette extends StatelessWidget {
  /// holds a human readable identifier for a color
  final String name;

  /// holds a `MaterialColor`
  final MaterialColor color;

  /// allow a const constructor,
  /// the key allows only one widget with the same
  /// name and color in the `tree`
  Palette({
    required this.name,
    required this.color,
  }) : super(key: ValueKey('Palette $name ${color.value}'));

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          for (var shade = 100; shade < 500; shade += 100)
            Container(
              height: 45.0,
              color: color[shade],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 12,
                      child: Text(
                        '$name [$shade]',
                        style: TextStyle(
                          color: (color[shade] != null &&
                                  color[shade]!.computeLuminance() > 0.4)
                              ? Colors.black
                              : Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Text(
                        '# '
                        // ignore: lines_longer_than_80_chars
                        '${color[shade]!.value.toRadixString(16).substring(2).toUpperCase()}',
                        style: TextStyle(
                          color: (color[shade] != null &&
                                  color[shade]!.computeLuminance() > 0.4)
                              ? Colors.black
                              : Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
