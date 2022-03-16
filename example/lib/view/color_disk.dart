import 'package:flutter/material.dart';

class ColorDisk extends StatelessWidget {
  const ColorDisk({Key? key, required this.onPressed, required this.color})
      : super(key: key);

  final VoidCallback onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
          onPressed: onPressed,
          child: SizedBox(
            height: 20,
            width: 20,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: color),
            ),
          ),
        ),
      ),
    );
  }
}
