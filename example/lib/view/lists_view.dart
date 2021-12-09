import 'dart:math';

import 'package:flutter/material.dart';

class ListsView extends StatefulWidget {
  const ListsView({Key? key}) : super(key: key);

  @override
  State<ListsView> createState() => _ListsViewState();
}

class _ListsViewState extends State<ListsView> with TickerProviderStateMixin {
  late TabController tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(controller: tabController, tabs: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text('ListView'),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text('Table'),
          ),
        ]),
        Expanded(
            child: TabBarView(
          controller: tabController,
          children: [generateListView(), generateTable(context)],
        ))
      ],
    );
  }

  Container generateTable(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Table(
        // defaultColumnWidth: FixedColumnWidth(150),
        border: TableBorder.all(color: Theme.of(context).disabledColor),
        children: [
          TableRow(
            children: [
              for (var i = 0; i < 3; i++)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Cell ${i + 1}'),
                )
            ],
          ),
          TableRow(children: [
            for (var i = 3; i < 6; i++)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Cell ${i + 1}'),
              )
          ])
        ],
      ),
    );
  }

  ListView generateListView() {
    final items = List.generate(300, (index) => 'Item ${index + 1}');

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
