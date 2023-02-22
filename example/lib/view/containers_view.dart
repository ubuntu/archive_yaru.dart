import 'package:flutter/material.dart';

class ContainersView extends StatefulWidget {
  const ContainersView({super.key});

  @override
  State<ContainersView> createState() => _ContainersViewState();
}

class _ContainersViewState extends State<ContainersView> {
  var _elevation = 2.0;

  @override
  Widget build(BuildContext context) {
    var card = Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: _elevation,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 50),
              child: Text('Card'),
            ),
          ),
        ),
      ],
    );
    var slider = Row(
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

    var containerWithBorder = Row(
      children: [
        Padding(
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
        )
      ],
    );

    return ListView(
      children: [
        card,
        slider,
        const Divider(),
        containerWithBorder,
        const Divider(),
        Padding(
          padding: const EdgeInsets.only(left: 40, top: 10),
          child: Text(
            'Dialog',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        Row(
          children: [
            SimpleDialog(
              shadowColor: Colors.black,
              children: [
                card,
                slider,
                containerWithBorder,
              ],
            ),
          ],
        )
      ],
    );
  }
}
