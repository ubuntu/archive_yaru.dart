import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart' as yaru;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var theme = yaru.theme;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yaru Example',
      theme: theme,
      home: MyHomePage(
          themeChanged: (themeName) => setState(() {
                if (themeName == 'Yaru') {
                  theme = yaru.theme;
                } else if (themeName == 'Yaru-light') {
                  theme = yaru.lightTheme;
                } else if (themeName == 'Yaru-dark') {
                  theme = yaru.darkTheme;
                }
              })),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.themeChanged}) : super(key: key);

  final void Function(String themeName) themeChanged;

  @override
  _MyHomePageState createState() => _MyHomePageState(themeChanged);
}

class _MyHomePageState extends State<MyHomePage> {
  final textController = TextEditingController(
      text:
          'My code fails, I do not know why.\nMy code works, I do not know why.\nText in other scripts: Tamaziɣt Taqbaylit, 中文(简体), Čeština, Беларуская, Ελληνικά, עברית, Русский, བོད་ཡིག, Norsk bokmål.');
  var themeName = 'Yaru';
  final void Function(String themeName) themeChanged;

  _MyHomePageState(this.themeChanged);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(themeName),
        leading: PopupMenuButton<String>(
            onSelected: (value) {
              setState(() {
                themeName = value;
                themeChanged(themeName);
              });
            },
            itemBuilder: (context) => <PopupMenuItem<String>>[
                  PopupMenuItem(value: 'Yaru', child: const Text('Standard')),
                  PopupMenuItem(
                      value: 'Yaru-light', child: const Text('Light')),
                  PopupMenuItem(value: 'Yaru-dark', child: const Text('Dark')),
                ]),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(15.0),
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
                    DropdownMenuItem(value: 1, child: const Text('One')),
                    DropdownMenuItem(value: 2, child: const Text('Two')),
                    DropdownMenuItem(value: 3, child: const Text('Three')),
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
            TextField(
              keyboardType: TextInputType.multiline,
              controller: textController,
              minLines: 5,
              maxLines: 5,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            Text('Yaru Colors', style: Theme.of(context).textTheme.headline4),
            const SizedBox(height: 15.0),
            Row(
              children: [
                Expanded(
                    child: colorPaletteExample('orange', yaru.Colors.orange)),
                SizedBox(width: 25.0),
                Expanded(
                    child: colorPaletteExample(
                        'lightAubergine', yaru.Colors.lightAubergine)),
                SizedBox(width: 25.0),
                Expanded(
                    child: colorPaletteExample(
                        'midAubergine', yaru.Colors.midAubergine)),
              ],
            ),
            Divider(height: 50.0, color: Colors.black),
            Row(
              children: [
                Expanded(
                    child: colorPaletteExample(
                        'canonicalAubergine', yaru.Colors.canonicalAubergine)),
                SizedBox(width: 25.0),
                Expanded(
                    child: colorPaletteExample(
                        'darkAubergine', yaru.Colors.darkAubergine)),
                SizedBox(width: 25.0),
                Expanded(
                    child: colorPaletteExample('warmGrey', yaru.Colors.warmGrey)),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'This button does nothing',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget colorPaletteExample(String colorName, MaterialColor color) {
    Map<String, MaterialColor> _color = {colorName: color};
    int _shade = 0;
    TextStyle _textStyle(int _shade) => TextStyle(
          color: (_color.values.first[_shade].computeLuminance() > 0.4)
              ? Colors.black
              : Colors.white,
          fontSize: 18.0,
          fontWeight: FontWeight.w400,
        );
    List<Widget> _colorItem = [];
    for (int i = 0; i < 5; i++) {
      _shade += 100;
      _colorItem.add(Container(
        height: 45.0,
        color: _color.values.first[_shade],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 12,
                child: Text(
                  _color.keys.first + '[$_shade]',
                  style: _textStyle(_shade),
                ),
              ),
              Expanded(
                flex: 4,
                child: Text(
                  '#' +
                      _color.values.first[_shade].value
                          .toRadixString(16)
                          .substring(2)
                          .toUpperCase(),
                  style: _textStyle(_shade),
                ),
              ),
            ],
          ),
        ),
      ));
    }
    return Column(
      children: _colorItem,
    );
  }
}
