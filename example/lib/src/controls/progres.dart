import 'package:flutter/material.dart';
import 'package:yaru_example/src/constants.dart';

class Progress extends StatefulWidget {
  const Progress({super.key});

  @override
  State<Progress> createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  var _elevation = 1.0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kWrapPadding),
      child: Wrap(
        spacing: kWrapSpacing,
        runSpacing: kWrapSpacing,
        children: [
          const SizedBox(
            width: 300,
            child: LinearProgressIndicator(),
          ),
          Wrap(
            spacing: kWrapSpacing,
            children: [
              const CircularProgressIndicator(),
              CircularProgressIndicator(
                value: _elevation,
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(_elevation.toStringAsFixed(2)),
              Slider(
                value: _elevation,
                max: 1,
                min: 0,
                onChanged: (value) => setState(() => _elevation = value),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
