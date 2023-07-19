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
    Map<String, Color> colors = _getAllColors(theme);

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
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: _gridDelegate,
          itemCount: colors.length,
          itemBuilder: (context, index) {
            final e = colors.entries.elementAt(index);
            return _colorContainer(
              e.key,
              e.value,
            );
          },
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
        const _SpacedDivider(),
        Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 5),
          child: Text(
            'Extension Colors',
            style: headlineStyle,
          ),
        ),
        GridView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: _gridDelegate,
          children: [
            _colorContainer('success', theme.colorScheme.success),
            _colorContainer('warning', theme.colorScheme.warning),
            _colorContainer('link', theme.colorScheme.link),
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

Map<String, Color> _getAllColors(ThemeData theme) {
  final s = theme.colorScheme;

  final colors = <String, Color>{
    'primaryColor': theme.primaryColor,
    'primary': s.primary,
    'onPrimary': s.onPrimary,
    'primaryContainer': s.primaryContainer,
    'onPrimaryContainer': s.onPrimaryContainer,
    'secondary': s.secondary,
    'onSecondary': s.onSecondary,
    'secondaryContainer': s.secondaryContainer,
    'onSecondaryContainer': s.onSecondaryContainer,
    'tertiary': s.tertiary,
    'onTertiary': s.onTertiary,
    'tertiaryContainer': s.tertiaryContainer,
    'onTertiaryContainer': s.onTertiaryContainer,
    'error': s.error,
    'onError': s.onError,
    'errorContainer': s.errorContainer,
    'onErrorContainer': s.onErrorContainer,
    'outline': s.outline,
    'outlineVariant': s.outlineVariant,
    'background': s.background,
    'onBackground': s.onBackground,
    'surface': s.surface,
    'onSurface': s.onSurface,
    'surfaceVariant': s.surfaceVariant,
    'onSurfaceVariant': s.onSurfaceVariant,
    'inverseSurface': s.inverseSurface,
    'onInverseSurface': s.onInverseSurface,
    'inversePrimary': s.inversePrimary,
    'shadow': s.shadow,
    'scrim': s.scrim,
    'surfaceTint': s.surfaceTint,
  };
  return colors;
}
