import 'package:flutter/material.dart';

class ListsView extends StatefulWidget {
  const ListsView({Key? key}) : super(key: key);

  @override
  State<ListsView> createState() => _ListsViewState();
}

class _ListsViewState extends State<ListsView> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<String> items = List.generate(301, (index) => 'Item $index');

    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          selected: index == _selectedIndex,
          onTap: () {
            setState(() {
              _selectedIndex = index;
            });
          },
          title: Text(items[index]),
        );
      },
      itemCount: items.length,
    );
  }

  void select() {}
}
