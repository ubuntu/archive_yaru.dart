import 'package:flutter/material.dart';
import 'package:yaru_example/src/constants.dart';

class Fabs extends StatelessWidget {
  const Fabs({super.key});

  @override
  Widget build(BuildContext context) {
    void onPressed() => ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Yay! ❤️ for Yaru')));

    return Wrap(
      spacing: kWrapSpacing,
      runSpacing: kWrapSpacing,
      children: [
        FloatingActionButton(
          onPressed: onPressed,
          child: const Icon(Icons.plus_one),
        ),
        FloatingActionButton.extended(
          onPressed: onPressed,
          label: const Text('Yay! +1 ❤️ for Yaru'),
        ),
        FloatingActionButton.small(
          onPressed: onPressed,
          child: const Icon(Icons.plus_one),
        ),
        FloatingActionButton.large(
          onPressed: onPressed,
          child: const Icon(Icons.plus_one),
        ),
      ],
    );
  }
}
