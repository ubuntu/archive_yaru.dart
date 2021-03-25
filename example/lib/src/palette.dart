import 'package:flutter/material.dart';

class Palette extends StatelessWidget {
  final String name;
  final MaterialColor color;
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
