import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_example/main.dart';
import 'package:yaru_example/src/colors/colors_view.dart';
import 'package:yaru_example/src/constants.dart';
import 'package:yaru_example/src/containers/containers_view.dart';
import 'package:yaru_example/src/controls/controls_view.dart';
import 'package:yaru_example/src/fonts/fonts_view.dart';
import 'package:yaru_example/src/home/color_disk.dart';
import 'package:yaru_example/src/textfields/text_fields_view.dart';

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  HomePageState();

  int _selectedIndex = 0;

  final _items = <Widget, (Widget, Widget, String)>{
    const FontsView(): (
      const Badge(
        label: Text('123'),
        child: Icon(Icons.font_download_outlined),
      ),
      const Badge(
        label: Text('123'),
        child: Icon(Icons.font_download),
      ),
      'Fonts'
    ),
    const ControlsView(): (
      const Icon(Icons.radio_button_checked_outlined),
      const Icon(Icons.radio_button_checked),
      'Controls'
    ),
    const TextFieldsView(): (
      const Icon(Icons.text_fields_outlined),
      const Icon(Icons.text_fields),
      'TextFields'
    ),
    const ColorsView(): (
      const Icon(Icons.color_lens_outlined),
      const Icon(Icons.color_lens),
      'Palette'
    ),
    const ContainersView(): (
      const Icon(Icons.square_outlined),
      const Icon(Icons.square),
      'Containers'
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: _Drawer(
        selectedIndex: _selectedIndex,
        onSelected: (index) {
          setState(() => _selectedIndex = index);
          Navigator.of(context).pop();
        },
        items: _items,
      ),
      appBar: AppBar(
        leading: Center(
          child: IconButton(
            onPressed: () => _scaffoldKey.currentState?.openDrawer(),
            icon: const Icon(Icons.menu),
          ),
        ),
        title: const _Title(),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: kWrapSpacing),
            child: _ThemeButton(),
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            return Row(
              children: [
                NavigationRail(
                  destinations: [
                    for (final item in _items.entries)
                      NavigationRailDestination(
                        icon: item.value.$1,
                        selectedIcon: item.value.$2,
                        label: Text(item.value.$3),
                      ),
                  ],
                  selectedIndex: _selectedIndex,
                  onDestinationSelected: (index) =>
                      setState(() => _selectedIndex = index),
                ),
                const VerticalDivider(
                  width: 0.0,
                ),
                Expanded(
                  child: Center(
                    child: _items.entries.elementAt(_selectedIndex).key,
                  ),
                )
              ],
            );
          } else {
            return Column(
              children: [
                Expanded(
                  child: Center(
                    child: _items.entries.elementAt(_selectedIndex).key,
                  ),
                ),
                const Divider(
                  height: 0.0,
                ),
                NavigationBar(
                  destinations: [
                    for (final item in _items.entries)
                      NavigationDestination(
                        icon: item.value.$1,
                        selectedIcon: item.value.$2,
                        label: item.value.$3,
                      ),
                  ],
                  selectedIndex: _selectedIndex,
                  onDestinationSelected: (index) =>
                      setState(() => _selectedIndex = index),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}

class _ThemeButton extends StatelessWidget {
  const _ThemeButton();

  @override
  Widget build(BuildContext context) {
    final theme = YaruTheme.of(context);
    final light = theme.themeMode == ThemeMode.light;

    return PopupMenuButton<Color>(
      padding: EdgeInsets.zero,
      icon: Icon(
        Icons.color_lens,
        color: Theme.of(context).primaryColor,
      ),
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            onTap: () => AppTheme.apply(context, highContrast: true),
            child: Row(
              children: [
                ColorDisk(
                  color: light ? Colors.black : Colors.white,
                  selected: theme.highContrast == true,
                ),
                const Text('highContrast')
              ],
            ),
          ),
          for (final variant in YaruVariant.values) // skip flavors
            PopupMenuItem(
              onTap: () => AppTheme.apply(
                context,
                variant: variant,
                highContrast: false,
              ),
              child: Row(
                children: [
                  ColorDisk(
                    color: variant.color,
                    selected:
                        variant == theme.variant && theme.highContrast != true,
                  ),
                  Text(variant.name)
                ],
              ),
            )
        ];
      },
    );
  }
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    final theme = YaruTheme.of(context);
    var light = theme.themeMode == ThemeMode.light;

    return IconButton(
      onPressed: () {
        return AppTheme.apply(
          context,
          themeMode: light ? ThemeMode.dark : ThemeMode.light,
        );
      },
      icon: Icon(
        light ? Icons.light_mode : Icons.dark_mode,
      ),
    );
  }
}

class _Drawer extends StatelessWidget {
  const _Drawer({
    required this.items,
    required this.onSelected,
    required this.selectedIndex,
  });

  final Map<Widget, (Widget, Widget, String)> items;
  final Function(int index) onSelected;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            child: Text('Drawer Header'),
          ),
          for (var i = 0; i < items.length; i++)
            ListTile(
              selected: i == selectedIndex,
              leading: i == selectedIndex
                  ? items.entries.elementAt(i).value.$2
                  : items.entries.elementAt(i).value.$1,
              title: Text(items.entries.elementAt(i).value.$3),
              onTap: () => onSelected(i),
            ),
        ],
      ),
    );
  }
}
