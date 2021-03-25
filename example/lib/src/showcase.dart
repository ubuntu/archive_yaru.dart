import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart';

import 'palette.dart';
import 'text_edit.dart';

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
              color: YaruSwatch.ubuntuOrange,
            ),
            const SizedBox(width: 25.0),
            Palette(
              name: 'lightAubergine',
              color: YaruSwatch.lightAubergine,
            ),
            const SizedBox(width: 25.0),
            Palette(
              name: 'midAubergine',
              color: YaruSwatch.midAubergine,
            ),
          ],
        ),
        const Divider(height: 50.0, color: Colors.black),
        Row(
          children: [
            Palette(
              name: 'canonicalAubergine',
              color: YaruSwatch.canonicalAubergine,
            ),
            const SizedBox(width: 25.0),
            Palette(
              name: 'darkAubergine',
              color: YaruSwatch.darkAubergine,
            ),
            const SizedBox(width: 25.0),
            Palette(
              name: 'warmGrey',
              color: YaruSwatch.warmGrey,
            ),
          ],
        ),
      ],
    );
  }
}
