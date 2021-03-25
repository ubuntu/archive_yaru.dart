import 'package:flutter/material.dart';
import 'src/showcase.dart';
import 'src/theme.dart';

final _yaru = ValueNotifier<SelectedTheme>(SelectedTheme.standard());
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp() : super(key: const ValueKey('MyApp'));

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<SelectedTheme>(
      child: const MyHomePage(),
      valueListenable: _yaru,
      builder: (context, yaru, child) => MaterialApp(
        title: 'Yaru Example',
        theme: yaru.theme,
        home: child,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage() : super(key: const ValueKey('MyHomePage'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ValueListenableBuilder<SelectedTheme>(
          valueListenable: _yaru,
          builder: (context, yaru, _) => Text(yaru.name),
        ),
        leading: PopupMenuButton<SelectedTheme>(
          onSelected: (value) => _yaru.value = value,
          itemBuilder: (context) => <PopupMenuItem<SelectedTheme>>[
            for (final theme in SelectedTheme.values)
              PopupMenuItem(
                value: theme,
                child: Text(theme.name),
              ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15.0),
        child: const ShowCase(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'This button does nothing',
        child: const Icon(Icons.add),
      ),
    );
  }
}
