import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart';

class ColorsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(15.0),
      children: <Widget>[
        Text('Accent Colors', style: Theme.of(context).textTheme.headline4),
        const SizedBox(height: 15.0),
        Row(
          children: [
            Expanded(
                child: colorPaletteExample('orange', YaruColors.ubuntuOrange)),
            SizedBox(width: 25.0),
            Expanded(child: colorPaletteExample('olive', YaruColors.olive)),
            SizedBox(width: 25.0),
            Expanded(child: colorPaletteExample('bark', YaruColors.bark)),
          ],
        ),
        Divider(height: 50.0),
        Row(
          children: [
            Expanded(
                child: colorPaletteExample('viridian', YaruColors.viridian)),
            SizedBox(width: 25.0),
            Expanded(child: colorPaletteExample('purple', YaruColors.purple)),
            SizedBox(width: 25.0),
            Expanded(child: colorPaletteExample('red', YaruColors.lightRed)),
          ],
        ),
        Divider(height: 50.0),
        Row(
          children: [
            Expanded(child: colorPaletteExample('blue', YaruColors.blue)),
            SizedBox(width: 25.0),
            Expanded(child: colorPaletteExample('magenta', YaruColors.magenta)),
            SizedBox(width: 25.0),
            Expanded(child: colorPaletteExample('sage', YaruColors.sage)),
          ],
        ),
        Divider(height: 50.0),
        Row(
          children: [
            Expanded(
                child: colorPaletteExample(
                    'prussianGreen', YaruColors.prussianGreen)),
            SizedBox(width: 25.0),
            Spacer(),
            SizedBox(width: 25.0),
            Spacer(),
          ],
        ),
        const SizedBox(height: 15.0),
        Text('Flavor Colors', style: Theme.of(context).textTheme.headline4),
        const SizedBox(height: 15.0),
        Row(
          children: [
            Expanded(
                child: colorPaletteExample(
                    'kubuntuBlue', FlavorColors.kubuntuBlue)),
            SizedBox(width: 25.0),
            Expanded(
                child: colorPaletteExample(
                    'lubuntuBlue', FlavorColors.lubuntuBlue)),
            SizedBox(width: 25.0),
            Expanded(
                child: colorPaletteExample(
                    'ubuntuBudgieBlue', FlavorColors.ubuntuBudgieBlue)),
          ],
        ),
        Divider(height: 50.0),
        Row(
          children: [
            Expanded(
                child: colorPaletteExample(
                    'ubuntuMateGreen', FlavorColors.ubuntuMateGreen)),
            SizedBox(width: 25.0),
            Expanded(
                child: colorPaletteExample(
                    'ubuntuStudioBlue', FlavorColors.ubuntuStudioBlue)),
            SizedBox(width: 25.0),
            Expanded(
                child: colorPaletteExample(
                    'xubuntuBlue', FlavorColors.xubuntuBlue)),
          ],
        ),
      ],
    );
  }

  Widget colorPaletteExample(String colorName, MaterialColor color) {
    Map<String, MaterialColor> _color = {colorName: color};
    int _shade = 50;
    TextStyle _textStyle(int _shade) => TextStyle(
          color: (_color.values.first[_shade]!.computeLuminance() > 0.4)
              ? Colors.black
              : Colors.white,
          fontSize: 9.0,
        );
    List<Widget> _colorItem = [];
    for (int i = 1; i <= 10; i++) {
      _colorItem.add(Container(
        height: 40.0,
        color: _color.values.first[_shade],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 10,
                child: Text(
                  _color.keys.first + '[$_shade]',
                  style: _textStyle(_shade),
                ),
              ),
              Expanded(
                flex: 4,
                child: Text(
                  '#' +
                      _color.values.first[_shade]!.value
                          .toRadixString(16)
                          .substring(2)
                          .toUpperCase(),
                  style: _textStyle(_shade),
                ),
              ),
            ],
          ),
        ),
      ));
      _shade = i * 100;
    }
    return Column(
      children: _colorItem,
    );
  }
}
