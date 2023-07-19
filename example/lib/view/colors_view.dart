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
    Map<String, (Color, Color?)> colors = _getAllColors(theme);

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
              e.value.$1,
              e.value.$2,
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

  Widget _colorContainer(
    String colorName,
    Color backgroundColor, [
    Color? foregroundColor,
  ]) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Center(
        child: Text(
          colorName,
          style: TextStyle(
            color: foregroundColor ?? contrastColor(backgroundColor),
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

Map<String, (Color, Color?)> _getAllColors(ThemeData theme) {
  final s = theme.colorScheme;

  final colors = <String, (Color, Color?)>{
    'primaryColor': (theme.primaryColor, null),
    'primary': (s.primary, s.onPrimary),
    'onPrimary': (s.onPrimary, null),
    'primaryContainer': (s.primaryContainer, s.onPrimaryContainer),
    'onPrimaryContainer': (s.onPrimaryContainer, null),
    'secondary': (s.secondary, s.onSecondary),
    'onSecondary': (s.onSecondary, null),
    'secondaryContainer': (s.secondaryContainer, s.onSecondaryContainer),
    'onSecondaryContainer': (s.onSecondaryContainer, null),
    'tertiary': (s.tertiary, s.onTertiary),
    'onTertiary': (s.onTertiary, null),
    'tertiaryContainer': (s.tertiaryContainer, s.onTertiaryContainer),
    'onTertiaryContainer': (s.onTertiaryContainer, null),
    'error': (s.error, s.onError),
    'onError': (s.onError, null),
    'errorContainer': (s.errorContainer, s.onErrorContainer),
    'onErrorContainer': (s.onErrorContainer, null),
    'outline': (s.outline, null),
    'outlineVariant': (s.outlineVariant, null),
    'background': (s.background, s.onBackground),
    'onBackground': (s.onBackground, null),
    'surface': (s.surface, s.onSurface),
    'onSurface': (s.onSurface, null),
    'surfaceVariant': (s.surfaceVariant, s.onSurfaceVariant),
    'onSurfaceVariant': (s.onSurfaceVariant, null),
    'inverseSurface': (s.inverseSurface, s.onInverseSurface),
    'onInverseSurface': (s.onInverseSurface, null),
    'inversePrimary': (s.inversePrimary, null),
    'shadow': (s.shadow, null),
    'scrim': (s.scrim, null),
    'surfaceTint': (s.surfaceTint, null),
  };
  return colors;
}
