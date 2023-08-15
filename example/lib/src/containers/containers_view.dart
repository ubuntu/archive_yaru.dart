import 'dart:math';

import 'package:flutter/material.dart';
import 'package:yaru_example/src/constants.dart';

class ContainersView extends StatefulWidget {
  const ContainersView({super.key});

  @override
  State<ContainersView> createState() => _ContainersViewState();
}

class _ContainersViewState extends State<ContainersView> {
  var _elevation = 2.0;
  var _inDialog = true;

  @override
  Widget build(BuildContext context) {
    final card = Card(
      elevation: _elevation,
      child: const SizedBox(
        height: 150,
        width: 200,
        child: Center(
          child: Text('Card'),
        ),
      ),
    );

    final slider = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(_elevation.toStringAsFixed(2)),
        ),
        Slider(
          value: _elevation,
          max: 10,
          min: 0,
          onChanged: (value) => setState(() => _elevation = value),
        ),
      ],
    );

    final containerWithBorder = Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Theme.of(context).dividerColor),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 70, vertical: 50),
          child: Text('Just a border'),
        ),
      ),
    );

    final children = [
      card,
      slider,
      containerWithBorder,
      for (var i = 0; i < 4; i++)
        ListTile(
          leading: Icon(getRandomIcon()),
          title: Text("ListTile title $i"),
          subtitle: i.isEven ? null : const Text('Subtitle'),
          trailing: const Text("Trailing"),
        )
    ];

    return SizedBox(
      width: 400,
      child: ListView(
        children: [
          const SizedBox(
            height: kWrapSpacing,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Switch(
                value: _inDialog,
                onChanged: (v) => setState(
                  () => _inDialog = v,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text('Show in dialog'),
            ],
          ),
          if (_inDialog)
            SimpleDialog(
              shadowColor: Colors.black,
              contentPadding: const EdgeInsets.all(kWrapSpacing),
              children: children,
            )
          else
            ...children
        ],
      ),
    );
  }
}

IconData getRandomIcon() {
  final Random random = Random();
  const String chars = '0123456789ABCDEF';
  int length = 3;
  String hex = '0xe';
  while (length-- > 0) {
    hex += chars[(random.nextInt(16)) | 0];
  }
  return IconData(int.parse(hex), fontFamily: 'MaterialIcons');
}
