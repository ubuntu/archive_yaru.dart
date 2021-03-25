import 'package:flutter/material.dart';

/// a Widget that demonstrates `Yaru` package `MaterialColor`s
class Palette extends StatelessWidget {
  /// holds a human readable identifier for a color
  final String name;

  /// holds a `MaterialColor`
  final MaterialColor color;

  /// allow a const constructor,
  /// the key allows only one widget with the same
  /// name and color in the `tree`
  Palette({
    required this.name,
    required this.color,
  }) : super(key: ValueKey('Palette $name ${color.value}'));

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          for (var shade = 100; shade < 500; shade += 100)
            Container(
              height: 45.0,
              color: color[shade],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 12,
                      child: Text(
                        '$name [$shade]',
                        style: TextStyle(
                          color: (color[shade] != null &&
                                  color[shade]!.computeLuminance() > 0.4)
                              ? Colors.black
                              : Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Text(
                        '# '
                        // ignore: lines_longer_than_80_chars
                        '${color[shade]!.value.toRadixString(16).substring(2).toUpperCase()}',
                        style: TextStyle(
                          color: (color[shade] != null &&
                                  color[shade]!.computeLuminance() > 0.4)
                              ? Colors.black
                              : Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
