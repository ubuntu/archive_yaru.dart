import 'package:flutter/material.dart';

import 'package:yaru_colors/yaru_colors.dart';

class ColorsView extends StatelessWidget {
  const ColorsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(15.0),
      children: <Widget>[
        Text('Accent Colors', style: Theme.of(context).textTheme.headline4),
        const SizedBox(height: 15.0),
        Row(
          children: [
            Expanded(child: colorPaletteExample('orange', YaruColors.orange)),
            const SizedBox(width: 25.0),
            Expanded(child: colorPaletteExample('olive', YaruColors.olive)),
            const SizedBox(width: 25.0),
            Expanded(child: colorPaletteExample('bark', YaruColors.bark)),
          ],
        ),
        const Divider(height: 50.0),
        Row(
          children: [
            Expanded(
              child: colorPaletteExample('viridian', YaruColors.viridian),
            ),
            const SizedBox(width: 25.0),
            Expanded(child: colorPaletteExample('purple', YaruColors.purple)),
            const SizedBox(width: 25.0),
            Expanded(child: colorPaletteExample('red', YaruColors.red)),
          ],
        ),
        const Divider(height: 50.0),
        Row(
          children: [
            Expanded(child: colorPaletteExample('blue', YaruColors.blue)),
            const SizedBox(width: 25.0),
            Expanded(child: colorPaletteExample('magenta', YaruColors.magenta)),
            const SizedBox(width: 25.0),
            Expanded(child: colorPaletteExample('sage', YaruColors.sage)),
          ],
        ),
        const Divider(height: 50.0),
        Row(
          children: [
            Expanded(
              child: colorPaletteExample(
                'prussianGreen',
                YaruColors.prussianGreen,
              ),
            ),
            const SizedBox(width: 25.0),
            const Spacer(),
            const SizedBox(width: 25.0),
            const Spacer(),
          ],
        ),
        const SizedBox(height: 15.0),
        Text('Flavor Colors', style: Theme.of(context).textTheme.headline4),
        const SizedBox(height: 15.0),
        Row(
          children: [
            Expanded(
              child: colorPaletteExample('kubuntuBlue', YaruColors.kubuntuBlue),
            ),
            const SizedBox(width: 25.0),
            Expanded(
              child: colorPaletteExample('lubuntuBlue', YaruColors.lubuntuBlue),
            ),
            const SizedBox(width: 25.0),
            Expanded(
              child: colorPaletteExample(
                'ubuntuBudgieBlue',
                YaruColors.ubuntuBudgieBlue,
              ),
            ),
          ],
        ),
        const Divider(height: 50.0),
        Row(
          children: [
            Expanded(
              child: colorPaletteExample(
                'ubuntuMateGreen',
                YaruColors.ubuntuMateGreen,
              ),
            ),
            const SizedBox(width: 25.0),
            Expanded(
              child: colorPaletteExample(
                'ubuntuStudioBlue',
                YaruColors.ubuntuStudioBlue,
              ),
            ),
            const SizedBox(width: 25.0),
            Expanded(
              child: colorPaletteExample('xubuntuBlue', YaruColors.xubuntuBlue),
            ),
          ],
        ),
      ],
    );
  }

  Widget colorPaletteExample(String colorName, MaterialColor color) {
    Map<String, MaterialColor> colorEntry = {colorName: color};
    int shade = 50;
    TextStyle textStyle(int shade) => TextStyle(
          color: (colorEntry.values.first[shade]!.computeLuminance() > 0.4)
              ? Colors.black
              : Colors.white,
          fontSize: 9.0,
        );
    List<Widget> colorItem = [];
    for (int i = 1; i <= 10; i++) {
      colorItem.add(
        Container(
          height: 40.0,
          color: colorEntry.values.first[shade],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 10,
                  child: Text(
                    '${colorEntry.keys.first}[$shade]',
                    style: textStyle(shade),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Text(
                    '#${colorEntry.values.first[shade]!.value.toRadixString(16).substring(2).toUpperCase()}',
                    style: textStyle(shade),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
      shade = i * 100;
    }
    return Column(
      children: colorItem,
    );
  }
}
