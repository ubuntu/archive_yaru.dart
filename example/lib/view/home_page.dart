import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yaru_example/view/colors_view.dart';
import 'package:yaru_example/view/controls_view.dart';
import 'package:yaru_example/view/fonts_view.dart';
import 'package:yaru_example/view/inputs_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.themeChanged}) : super(key: key);

  final void Function(String themeName) themeChanged;

  @override
  _HomePageState createState() => _HomePageState(themeChanged);
}

class _HomePageState extends State<HomePage> {
  _HomePageState(this.themeChanged);
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
          'My code fails, I do not know why.\nMy code works, I do not know why.\nText in other scripts: Tamaziɣt Taqbaylit, 中文(简体), Čeština, Беларуская, Ελληνικά, עברית, Русский, བོད་ཡིག, Norsk bokmål.');
  var themeName = 'Yaru';
  final void Function(String themeName) themeChanged;

  int _selectedIndex = 0;
  final List<Widget> _views = <Widget>[
    FontsView(),
    ControlsView(),
    InputsView(),
    ColorsView()
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(themeName),
        leading: PopupMenuButton<String>(
            onSelected: (value) {
              setState(() {
                themeName = value;
                themeChanged(themeName);
              });
            },
            itemBuilder: (context) => <PopupMenuItem<String>>[
                  PopupMenuItem(value: 'Yaru', child: const Text('Standard')),
                  PopupMenuItem(
                      value: 'Yaru-light', child: const Text('Light')),
                  PopupMenuItem(value: 'Yaru-dark', child: const Text('Dark')),
                ]),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: _views[_selectedIndex],
            ),
          ),
          BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.font_download_outlined),
                  activeIcon: Icon(Icons.font_download),
                  label: 'Fonts'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.radio_button_checked_outlined),
                  activeIcon: Icon(Icons.radio_button_checked),
                  label: 'Controls'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.text_fields),
                  activeIcon: Icon(Icons.text_fields_outlined),
                  label: 'Text Fields'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.color_lens_outlined),
                  activeIcon: Icon(Icons.color_lens),
                  label: 'Palette')
            ],
            currentIndex: _selectedIndex,
            onTap: (index) => setState(() => _selectedIndex = index),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {incrementCounter()},
        child: Icon(Icons.plus_one),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
