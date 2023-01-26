import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_example/main.dart';
import 'package:yaru_example/view/color_disk.dart';
import 'package:yaru_example/view/colors_view.dart';
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
  int _counter = 0;

  void incrementCounter() {
    setState(() {
      _counter++;
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Yay! $_counter ❤️ for Yaru')));
    });
  }

  final textController = TextEditingController(
    text:
        'My code fails, I do not know why.\nMy code works, I do not know why.\nText in other scripts: Tamaziɣt Taqbaylit, 中文(简体), Čeština, Беларуская, Ελληνικά, עברית, Русский, བོད་ཡིག, Norsk bokmål.',
  );

  int _selectedIndex = 0;
  final List<Widget> _views = [
    const FontsView(),
    const ControlsView(),
    InputsView(),
    const ColorsView()
  ];

  @override
  Widget build(BuildContext context) {
    final theme = YaruTheme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(
          width: 50,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(0),
                shape: const CircleBorder(),
              ),
              onPressed: () => AppTheme.apply(
                context,
                themeMode: theme.themeMode == ThemeMode.light
                    ? ThemeMode.dark
                    : ThemeMode.light,
              ),
              child: Icon(
                theme.themeMode == ThemeMode.light
                    ? Icons.dark_mode
                    : Icons.light_mode,
              ),
            ),
          ),
        ),
        actions: [
          PopupMenuButton<Color>(
            onSelected: (value) {},
            child: SizedBox(
              width: 40,
              child: Icon(
                Icons.color_lens,
                color: Theme.of(context).primaryColor,
              ),
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
                    )
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
      floatingActionButton: FloatingActionButton(
        onPressed: () => {incrementCounter()},
        child: const Icon(Icons.plus_one),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
