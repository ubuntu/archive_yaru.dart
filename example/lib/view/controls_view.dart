import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ControlsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(15.0),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: <Widget>[
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
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: <Widget>[
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
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: <Widget>[
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
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
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
            Column(
              children: [
                Text('Checkbox'),
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (_) {}),
                    Checkbox(value: false, onChanged: (_) {}),
                    Checkbox(value: true, onChanged: null),
                    Checkbox(value: false, onChanged: null),
                  ],
                ),
                Text('Radio'),
                Row(
                  children: [
                    Radio(value: true, groupValue: true, onChanged: (_) {}),
                    Radio(value: false, groupValue: true, onChanged: (_) {}),
                    Radio(value: true, groupValue: true, onChanged: null),
                    Radio(value: false, groupValue: true, onChanged: null),
                  ],
                ),
              ],
            ),
          ],
        ),
        LinearProgressIndicator(),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            children: [
              CircularProgressIndicator(),
            ],
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
