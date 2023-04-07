import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart';

const _gridDelegate = SliverGridDelegateWithMaxCrossAxisExtent(
  maxCrossAxisExtent: 300,
  mainAxisExtent: 40,
  mainAxisSpacing: 20,
  crossAxisSpacing: 20,
);

class ColorsView extends StatelessWidget {
  const ColorsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final headlineStyle = theme.textTheme.headlineMedium;

    return ListView(
      padding: const EdgeInsets.all(15),
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 5),
          child: Text(
            'Theme Colors',
            style: headlineStyle,
          ),
        ),
        GridView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: _gridDelegate,
          children: [
            _colorContainer(
              'primaryColor',
              theme.primaryColor,
            ),
            _colorContainer(
              'primary',
              theme.colorScheme.primary,
            ),
            _colorContainer(
              'onPrimary',
              theme.colorScheme.onPrimary,
            ),
            _colorContainer(
              'onPrimaryContainer',
              theme.colorScheme.onPrimaryContainer,
            ),
            _colorContainer(
              'secondary',
              theme.colorScheme.secondary,
            ),
            _colorContainer(
              'onSecondary',
              theme.colorScheme.onSecondary,
            ),
            _colorContainer(
              'secondaryContainer',
              theme.colorScheme.secondaryContainer,
            ),
            _colorContainer(
              'onSecondaryContainer',
              theme.colorScheme.onSecondaryContainer,
            ),
            _colorContainer(
              'tertiary',
              theme.colorScheme.tertiary,
            ),
            _colorContainer(
              'onTertiary',
              theme.colorScheme.onTertiary,
            ),
            _colorContainer(
              'tertiaryContainer',
              theme.colorScheme.tertiaryContainer,
            ),
            _colorContainer(
              'onTertiaryContainer',
              theme.colorScheme.onTertiaryContainer,
            ),
            _colorContainer(
              'surface',
              theme.colorScheme.surface,
            ),
            _colorContainer(
              'surfaceTint',
              theme.colorScheme.surfaceTint,
            ),
            _colorContainer(
              'surfaceVariant',
              theme.colorScheme.surfaceVariant,
            ),
            _colorContainer(
              'background',
              theme.colorScheme.background,
            ),
            _colorContainer(
              'onBackground',
              theme.colorScheme.onBackground,
            ),
            _colorContainer(
              'inversePrimary',
              theme.colorScheme.inversePrimary,
            ),
            _colorContainer(
              'inverseSurface',
              theme.colorScheme.inverseSurface,
            ),
            _colorContainer(
              'error',
              theme.colorScheme.error,
            ),
            _colorContainer(
              'errorContainer',
              theme.colorScheme.errorContainer,
            ),
            _colorContainer(
              'onError',
              theme.colorScheme.onError,
            ),
            _colorContainer(
              'scrim',
              theme.colorScheme.scrim,
            ),
          ],
        ),
        const _SpacedDivider(),
        Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 5),
          child: Text(
            'Accent Colors',
            style: headlineStyle,
          ),
        ),
        GridView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: _gridDelegate,
          children: [
            _colorContainer('orange', YaruColors.orange),
            _colorContainer('olive', YaruColors.olive),
            _colorContainer('viridian', YaruColors.viridian),
            _colorContainer('purple', YaruColors.purple),
            _colorContainer('red', YaruColors.red),
            _colorContainer('blue', YaruColors.blue),
            _colorContainer('magenta', YaruColors.magenta),
            _colorContainer('sage', YaruColors.sage),
            _colorContainer('prussianGreen', YaruColors.prussianGreen),
            _colorContainer('bark', YaruColors.bark),
          ],
        ),
        const _SpacedDivider(),
        Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 5),
          child: Text(
            'Flavor Colors',
            style: headlineStyle,
          ),
        ),
        GridView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: _gridDelegate,
          children: [
            _colorContainer('kubuntuBlue', YaruColors.kubuntuBlue),
            _colorContainer('lubuntuBlue', YaruColors.lubuntuBlue),
            _colorContainer(
              'ubuntuBudgieBlue',
              YaruColors.ubuntuBudgieBlue,
            ),
            _colorContainer(
              'ubuntuButterflyPink',
              YaruColors.ubuntuButterflyPink,
            ),
            _colorContainer(
              'ubuntuCinnamonBrown',
              YaruColors.ubuntuCinnamonBrown,
            ),
            _colorContainer(
              'ubuntuMateGreen',
              YaruColors.ubuntuMateGreen,
            ),
            _colorContainer(
              'ubuntuStudioBlue',
              YaruColors.ubuntuStudioBlue,
            ),
            _colorContainer(
              'ubuntuUnityPurple',
              YaruColors.ubuntuUnityPurple,
            ),
            _colorContainer('xubuntuBlue', YaruColors.xubuntuBlue),
          ],
        ),
      ],
    );
  }

  Widget _colorContainer(String colorName, Color color) {
    return Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(6)),
      child: Center(
        child: Text(
          colorName,
          style: TextStyle(
            color: contrastColor(color),
          ),
        ),
      ),
    );
  }
}

class _SpacedDivider extends StatelessWidget {
  const _SpacedDivider();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 30, bottom: 20),
      child: Divider(
        height: 0,
      ),
    );
  }
}
