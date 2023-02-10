import 'package:flutter/material.dart';

import 'package:yaru_colors/yaru_colors.dart';

class ColorsView extends StatelessWidget {
  const ColorsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView(
      padding: const EdgeInsets.all(15.0),
      children: <Widget>[
        Text(
          'Colors',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 15.0),
        _themeColorRow(
          theme.primaryColor,
          'primaryColor',
          theme.brightness,
        ),
        _themeColorRow(
          theme.colorScheme.primary,
          'colorScheme.primary',
          theme.brightness,
        ),
        _themeColorRow(
          theme.colorScheme.onPrimary,
          'colorScheme.onPrimary',
          theme.brightness,
        ),
        _themeColorRow(
          theme.colorScheme.onPrimaryContainer,
          'colorScheme.onPrimaryContainer',
          theme.brightness,
        ),
        _themeColorRow(
          theme.colorScheme.secondary,
          'colorScheme.secondary',
          theme.brightness,
        ),
        _themeColorRow(
          theme.colorScheme.onSecondary,
          'colorScheme.onSecondary',
          theme.brightness,
        ),
        _themeColorRow(
          theme.colorScheme.secondaryContainer,
          'colorScheme.secondaryContainer',
          theme.brightness,
        ),
        _themeColorRow(
          theme.colorScheme.onSecondaryContainer,
          'colorScheme.onSecondaryContainer',
          theme.brightness,
        ),
        _themeColorRow(
          theme.colorScheme.tertiary,
          'colorScheme.tertiary',
          theme.brightness,
        ),
        _themeColorRow(
          theme.colorScheme.onTertiary,
          'colorScheme.onTertiary',
          theme.brightness,
        ),
        _themeColorRow(
          theme.colorScheme.tertiaryContainer,
          'colorScheme.tertiaryContainer',
          theme.brightness,
        ),
        _themeColorRow(
          theme.colorScheme.onTertiaryContainer,
          'colorScheme.onTertiaryContainer',
          theme.brightness,
        ),
        _themeColorRow(
          theme.colorScheme.surface,
          'colorScheme.surface',
          theme.brightness,
        ),
        _themeColorRow(
          theme.colorScheme.surfaceTint,
          'colorScheme.surfaceTint',
          theme.brightness,
        ),
        _themeColorRow(
          theme.colorScheme.surfaceVariant,
          'colorScheme.surfaceVariant',
          theme.brightness,
        ),
        _themeColorRow(
          theme.colorScheme.background,
          'colorScheme.background',
          theme.brightness,
        ),
        _themeColorRow(
          theme.colorScheme.onBackground,
          'colorScheme.onBackground',
          theme.brightness,
        ),
        _themeColorRow(
          theme.colorScheme.inversePrimary,
          'colorScheme.inversePrimary',
          theme.brightness,
        ),
        _themeColorRow(
          theme.colorScheme.inverseSurface,
          'colorScheme.inverseSurface',
          theme.brightness,
        ),
        _themeColorRow(
          theme.colorScheme.error,
          'colorScheme.error',
          theme.brightness,
        ),
        _themeColorRow(
          theme.colorScheme.errorContainer,
          'colorScheme.errorContainer',
          theme.brightness,
        ),
        _themeColorRow(
          theme.colorScheme.onError,
          'colorScheme.onError',
          theme.brightness,
        ),
        _themeColorRow(
          theme.colorScheme.scrim,
          'colorScheme.scrim',
          theme.brightness,
        ),
        Text(
          'Accent Colors',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
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
        Text(
          'Flavor Colors',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
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
                'ubuntuButterflyPink',
                YaruColors.ubuntuButterflyPink,
              ),
            ),
            const SizedBox(width: 25.0),
            Expanded(
              child: colorPaletteExample(
                'ubuntuCinnamonBrown',
                YaruColors.ubuntuCinnamonBrown,
              ),
            ),
            const SizedBox(width: 25.0),
            Expanded(
              child: colorPaletteExample(
                'ubuntuMateGreen',
                YaruColors.ubuntuMateGreen,
              ),
            ),
          ],
        ),
        const Divider(height: 50.0),
        Row(
          children: [
            Expanded(
              child: colorPaletteExample(
                'ubuntuStudioBlue',
                YaruColors.ubuntuStudioBlue,
              ),
            ),
            const SizedBox(width: 25.0),
            Expanded(
              child: colorPaletteExample(
                'ubuntuUnityPurple',
                YaruColors.ubuntuUnityPurple,
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

  Row _themeColorRow(Color color, String label, Brightness brightness) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: color,
            height: 40,
            child: Center(
              child: Text(
                label,
                style: TextStyle(
                  color: Colors.white,
                  shadows: [
                    BoxShadow(
                      offset: const Offset(1, 1),
                      color: Colors.black.withOpacity(0.8),
                      spreadRadius: 3,
                      blurRadius: 3,
                    )
                  ],
                ),
              ),
            ),
          ),
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
