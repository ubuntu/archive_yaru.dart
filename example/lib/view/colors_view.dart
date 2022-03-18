import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart';

class ColorsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(15.0),
      children: <Widget>[
        Text('Yaru Colors', style: Theme.of(context).textTheme.headline4),
        const SizedBox(height: 15.0),
        Row(
          children: [
            Expanded(
                child: colorPaletteExample('orange', YaruColors.ubuntuOrange)),
            SizedBox(width: 25.0),
            Expanded(child: colorPaletteExample('olive', oliveMaterialColor)),
            SizedBox(width: 25.0),
            Expanded(child: colorPaletteExample('bark', barkMaterialColor)),
          ],
        ),
        Divider(height: 50.0),
        Row(
          children: [
            Expanded(
                child: colorPaletteExample('viridian', viridianMaterialColor)),
            SizedBox(width: 25.0),
            Expanded(child: colorPaletteExample('purple', purpleMaterialColor)),
            SizedBox(width: 25.0),
            Expanded(child: colorPaletteExample('red', lightRedMaterialColor)),
          ],
        ),
        Divider(height: 50.0),
        Row(
          children: [
            Expanded(child: colorPaletteExample('blue', blueMaterialColor)),
            SizedBox(width: 25.0),
            Expanded(
                child: colorPaletteExample('magenta', magentaMaterialColor)),
            SizedBox(width: 25.0),
            Expanded(
                child: colorPaletteExample('sageMaterial', sageMaterialColor)),
          ],
        ),
        Divider(height: 50.0),
        Row(
          children: [
            Expanded(
                child: colorPaletteExample(
                    'prussianGreen', prussianGreenMaterialColor)),
            SizedBox(width: 25.0),
            Expanded(
                child: colorPaletteExample(
                    'jet', YaruColors.createMaterialColor(YaruColors.jet))),
            SizedBox(width: 25.0),
            Expanded(
                child: colorPaletteExample('warmGrey', YaruColors.warmGrey)),
          ],
        ),
      ],
    );
  }

  Widget colorPaletteExample(String colorName, MaterialColor color) {
    Map<String, MaterialColor> _color = {colorName: color};
    int _shade = 0;
    TextStyle _textStyle(int _shade) => TextStyle(
          color: (_color.values.first[_shade]!.computeLuminance() > 0.4)
              ? Colors.black
              : Colors.white,
          fontSize: 10.0,
        );
    List<Widget> _colorItem = [];
    for (int i = 0; i < 5; i++) {
      _shade += 100;
      _colorItem.add(Container(
        height: 45.0,
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
    }
    return Column(
      children: _colorItem,
    );
  }
}
