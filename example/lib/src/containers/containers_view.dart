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
    ];

    return SizedBox(
      width: 400,
      child: Column(
        children: [
          const SizedBox(
            height: kWrapSpacing,
          ),
          Switch(
            value: _inDialog,
            onChanged: (v) => setState(
              () => _inDialog = v,
            ),
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
