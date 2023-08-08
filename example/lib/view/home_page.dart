import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_example/main.dart';
import 'package:yaru_example/view/color_disk.dart';
import 'package:yaru_example/view/colors_view.dart';
import 'package:yaru_example/view/containers_view.dart';
import 'package:yaru_example/view/controls_view.dart';
import 'package:yaru_example/view/fonts_view.dart';
import 'package:yaru_example/view/inputs_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  HomePageState();

  final textController = TextEditingController(
    text:
        'My code fails, I do not know why.\nMy code works, I do not know why.\nText in other scripts: Tamaziɣt Taqbaylit, 中文(简体), Čeština, Беларуская, Ελληνικά, עברית, Русский, བོད་ཡིག, Norsk bokmål.',
  );

  int _selectedIndex = 0;
  final List<Widget> _views = [
    const FontsView(),
    const ControlsView(),
    const InputsView(),
    const ColorsView(),
    const ContainersView()
  ];

  @override
  Widget build(BuildContext context) {
    final theme = YaruTheme.of(context);

    void selectIndex(int index) {
      setState(() => _selectedIndex = index);
      Navigator.of(context).pop();
    }

    return Scaffold(
      drawer: _Drawer(
        selectedIndex: _selectedIndex,
        selectIndex: selectIndex,
      ),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () => AppTheme.apply(
              context,
              themeMode: theme.themeMode == ThemeMode.light
                  ? ThemeMode.dark
                  : ThemeMode.light,
            ),
            icon: Icon(
              theme.themeMode == ThemeMode.light
                  ? Icons.dark_mode
                  : Icons.light_mode,
            ),
          ),
        ),
        actions: [
          PopupMenuButton<Color>(
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
                        color: theme.themeMode == ThemeMode.light
                            ? Colors.black
                            : Colors.white,
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
                          selected: variant == theme.variant &&
                              theme.highContrast != true,
                        ),
                        Text(variant.name)
                      ],
                    ),
                  )
              ];
            },
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            return Row(
              children: [
                NavigationRail(
                  destinations: const [
                    NavigationRailDestination(
                      icon: Badge(
                        label: Text('123'),
                        child: Icon(Icons.font_download_outlined),
                      ),
                      selectedIcon: Badge(
                        label: Text('123'),
                        child: Icon(Icons.font_download),
                      ),
                      label: Text('Fonts'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.radio_button_checked_outlined),
                      selectedIcon: Icon(Icons.radio_button_checked),
                      label: Text('Controls'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.text_fields),
                      selectedIcon: Icon(Icons.text_fields_outlined),
                      label: Text('Text Fields'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.color_lens_outlined),
                      selectedIcon: Icon(Icons.color_lens),
                      label: Text('Palette'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.square_outlined),
                      selectedIcon: Icon(Icons.square),
                      label: Text('Containers'),
                    )
                  ],
                  selectedIndex: _selectedIndex,
                  onDestinationSelected: (index) =>
                      setState(() => _selectedIndex = index),
                ),
                const VerticalDivider(
                  width: 0.0,
                ),
                Expanded(child: Center(child: _views[_selectedIndex]))
              ],
            );
          } else {
            return Column(
              children: [
                Expanded(child: Center(child: _views[_selectedIndex])),
                const Divider(
                  height: 0.0,
                ),
                NavigationBar(
                  destinations: const [
                    NavigationDestination(
                      icon: Badge(
                        label: Text('123'),
                        child: Icon(Icons.font_download_outlined),
                      ),
                      selectedIcon: Badge(
                        label: Text('123'),
                        child: Icon(Icons.font_download),
                      ),
                      label: 'Fonts',
                    ),
                    NavigationDestination(
                      icon: Icon(Icons.radio_button_checked_outlined),
                      selectedIcon: Icon(Icons.radio_button_checked),
                      label: 'Controls',
                    ),
                    NavigationDestination(
                      icon: Icon(Icons.text_fields),
                      selectedIcon: Icon(Icons.text_fields_outlined),
                      label: 'Text Fields',
                    ),
                    NavigationDestination(
                      icon: Icon(Icons.color_lens_outlined),
                      selectedIcon: Icon(Icons.color_lens),
                      label: 'Palette',
                    ),
                    NavigationDestination(
                      icon: Icon(Icons.square_outlined),
                      selectedIcon: Icon(Icons.square),
                      label: 'Containers',
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

class _Drawer extends StatelessWidget {
  const _Drawer({
    required int selectedIndex,
    required this.selectIndex,
  }) : _selectedIndex = selectedIndex;

  final int _selectedIndex;
  final Function(int index) selectIndex;

  @override
  Widget build(BuildContext context) {
    final map = <String, IconData>{
      'Fonts': Icons.font_download,
      'Controls': Icons.radio_button_checked,
      'Text Fields': Icons.text_fields,
      'Palette': Icons.palette,
      'Containers': Icons.square_outlined,
    };

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            child: Text('Drawer Header'),
          ),
          for (int i = 0; i < map.length; i++)
            ListTile(
              selected: _selectedIndex == i,
              leading: Icon(map.entries.elementAt(i).value),
              title: Text(map.entries.elementAt(i).key),
              onTap: () => selectIndex(i),
            ),
        ],
      ),
    );
  }
}
