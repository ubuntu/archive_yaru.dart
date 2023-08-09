import 'package:flutter/material.dart';
import 'package:yaru_example/src/constants.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  void incrementCounter() {
    setState(() {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Yay! ❤️ for Yaru')));
    });
  }

  @override
  Widget build(BuildContext context) {
    final buttons = <(Widget, Widget)>[
      (
        TextButton(
          onPressed: () {},
          child: const Text('Text'),
        ),
        const TextButton(
          onPressed: null,
          autofocus: true,
          child: Text('Text'),
        ),
      ),
      (
        OutlinedButton(
          onPressed: () {},
          child: const Text('Outlined'),
        ),
        const OutlinedButton(
          onPressed: null,
          child: Text('Outlined'),
        ),
      ),
      (
        FilledButton(
          onPressed: () {},
          child: const Text('Filled'),
        ),
        const FilledButton(
          onPressed: null,
          child: Text('Filled'),
        ),
      ),
      (
        ElevatedButton(
          onPressed: () {},
          child: const Text('Elevated'),
        ),
        const ElevatedButton(
          onPressed: null,
          child: Text('Elevated'),
        ),
      ),
    ];

    return Wrap(
      direction: Axis.vertical,
      spacing: kWrapSpacing,
      runSpacing: kWrapSpacing,
      children: [
        for (final button in buttons)
          Wrap(
            spacing: kWrapSpacing,
            children: [button.$1, button.$2],
          )
      ],
    );
  }
}
