import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var theme = yaruTheme;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yaru Example',
      theme: theme,
      home: MyHomePage(
          themeChanged: (themeName) => setState(() {
                if (themeName == 'Yaru') {
                  theme = yaruTheme;
                } else if (themeName == 'Yaru-light') {
                  theme = yaruLightTheme;
                } else if (themeName == 'Yaru-dark') {
                  theme = yaruDarkTheme;
                }
              })),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.themeChanged}) : super(key: key);

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
                  PopupMenuItem(value: 'Yaru', child: Text('Standard')),
                  PopupMenuItem(value: 'Yaru-light', child: Text('Light')),
                  PopupMenuItem(value: 'Yaru-dark', child: Text('Dark')),
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
              FlatButton(
                onPressed: () => print('FlatButton'),
                child: const Text('Click me!'),
              ),
              SizedBox(width: 15),
              FlatButton(
                child: const Text("Can't click me!"),
              ),
            ]),
            Row(children: <Widget>[
              OutlinedButton(
                onPressed: () => print('OutlinedButton'),
                child: const Text('Click me!'),
              ),
              SizedBox(width: 15),
              OutlinedButton(
                onPressed: null,
                child: const Text("Can't click me!"),
              ),
            ]),
            Row(children: <Widget>[
              RaisedButton(
                onPressed: () => print('RaisedButton'),
                child: const Text('Click me!'),
              ),
              SizedBox(width: 15),
              RaisedButton(
                child: const Text("Can't click me!"),
              ),
            ]),
            Row(
              children: <Widget>[
                DropdownButton<int>(
                  onChanged: (value) => print('DropdownButton $value'),
                  value: 1,
                  items: <DropdownMenuItem<int>>[
                    DropdownMenuItem(value: 1, child: Text('One')),
                    DropdownMenuItem(value: 2, child: Text('Two')),
                    DropdownMenuItem(value: 3, child: Text('Three')),
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
                        Text('Yes'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Checkbox(onChanged: (value) {}, value: false),
                        Text('No'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Checkbox(value: true),
                        Text('Disabled'),
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
                        Text('Yes'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Switch(onChanged: (value) {}, value: false),
                        Text('No'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Switch(value: true),
                        Text('Disabled'),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Radio(onChanged: (value) {}, value: 1, groupValue: 1),
                        Text('Yes'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(onChanged: (value) {}, value: 2, groupValue: 1),
                        Text('No'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(value: 3, groupValue: 1),
                        Text('Disabled'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 15),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                errorText: "You're doing it wrong",
              ),
            ),
            SizedBox(height: 15),
            TextField(
              keyboardType: TextInputType.multiline,
              controller: textController,
              minLines: 5,
              maxLines: 5,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: 250.0,
              height: 50.0,
              color: yaruUbuntuOrange,
              child: Center(
                  child: Text('yaruUbuntuOrange',
                      style: TextStyle(
                          color: yaruWhite,
                          fontSize: 22,
                          fontWeight: FontWeight.w300))),
            ),
            Container(
              width: 250.0,
              height: 50.0,
              color: yaruLightAubergine,
              child: Center(
                  child: Text('yaruLightAubergine',
                      style: TextStyle(
                          color: yaruWhite,
                          fontSize: 22,
                          fontWeight: FontWeight.w300))),
            ),
            Container(
              width: 250.0,
              height: 50.0,
              color: yaruMidAubergine,
              child: Center(
                  child: Text('yaruMidAubergine',
                      style: TextStyle(
                          color: yaruWhite,
                          fontSize: 22,
                          fontWeight: FontWeight.w300))),
            ),
            Container(
              width: 250.0,
              height: 50.0,
              color: yaruDarkAubergine,
              child: Center(
                  child: Text('yaruDarkAubergine',
                      style: TextStyle(
                          color: yaruWhite,
                          fontSize: 22,
                          fontWeight: FontWeight.w300))),
            ),
            Container(
              width: 250.0,
              height: 50.0,
              color: yaruCanonicalAubergine,
              child: Center(
                  child: Text('yaruCanonicalAubergine',
                      style: TextStyle(
                          color: yaruWhite,
                          fontSize: 22,
                          fontWeight: FontWeight.w300))),
            ),
            Container(
              width: 250.0,
              height: 50.0,
              color: yaruWarmGrey,
              child: Center(
                  child: Text('yaruWarmGrey',
                      style: TextStyle(
                          color: yaruTextGrey,
                          fontSize: 22,
                          fontWeight: FontWeight.w300))),
            ),
            Container(
              width: 250.0,
              height: 50.0,
              color: yaruCoolGrey,
              child: Center(
                  child: Text('yaruCoolGrey',
                      style: TextStyle(
                          color: yaruWhite,
                          fontSize: 22,
                          fontWeight: FontWeight.w300))),
            ),
            Container(
              width: 250.0,
              height: 50.0,
              color: yaruTextGrey,
              child: Center(
                  child: Text('yaruTextGrey',
                      style: TextStyle(
                          color: yaruWhite,
                          fontSize: 22,
                          fontWeight: FontWeight.w300))),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'This button does nothing',
        child: Icon(Icons.add),
      ),
    );
  }
}
