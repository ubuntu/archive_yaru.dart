import 'package:flutter/material.dart';

class ControlsView extends StatefulWidget {
  const ControlsView({super.key});

  @override
  State<ControlsView> createState() => _ControlsViewState();
}

class _ControlsViewState extends State<ControlsView>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: tabController,
          tabs: const [
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Text('Buttons'),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Text('Checks'),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Text('Switches'),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Text('Progress'),
            )
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 95,
                            child: TextButton(
                              onPressed: () {},
                              child: const Text('Click me!'),
                            ),
                          ),
                          const SizedBox(width: 15),
                          const TextButton(
                            onPressed: null,
                            autofocus: true,
                            child: Text("Can't click me!"),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          OutlinedButton(
                            onPressed: () {},
                            child: const Text('Click me!'),
                          ),
                          const SizedBox(width: 15),
                          const OutlinedButton(
                            onPressed: null,
                            child: Text("Can't click me!"),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          FilledButton(
                            onPressed: () {},
                            child: const Text('Click me!'),
                          ),
                          const SizedBox(width: 15),
                          const FilledButton(
                            onPressed: null,
                            child: Text("Can't click me!"),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('Click me!'),
                          ),
                          const SizedBox(width: 15),
                          const ElevatedButton(
                            onPressed: null,
                            child: Text("Can't click me!"),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          children: [
                            ToggleButtons(
                              isSelected: const [true, false, false],
                              onPressed: (v) {},
                              children: const [
                                Text('Yes'),
                                Text('No'),
                                Text('No')
                              ],
                            ),
                            const SizedBox(width: 15),
                            ToggleButtons(
                              isSelected: const [true, false, false],
                              children: const [
                                Text('Yes'),
                                Text('No'),
                                Text('No')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: <Widget>[
                          DropdownButton<int>(
                            onChanged: (value) {},
                            value: 1,
                            items: const <DropdownMenuItem<int>>[
                              DropdownMenuItem(
                                value: 1,
                                child: Text('One'),
                              ),
                              DropdownMenuItem(
                                value: 2,
                                child: Text('Two'),
                              ),
                              DropdownMenuItem(
                                value: 3,
                                child: Text('Three'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: const [
                          DropdownMenu(
                            dropdownMenuEntries: [
                              DropdownMenuEntry(value: 1, label: '1'),
                              DropdownMenuEntry(value: 2, label: '2'),
                              DropdownMenuEntry(value: 3, label: '3')
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          splashRadius: 20,
                          onPressed: () => showDialog(
                            context: context,
                            builder: (context) => SimpleDialog(
                              title: const Center(child: Text('Dialog Title')),
                              titlePadding: const EdgeInsets.only(top: 15),
                              children: [
                                Center(
                                  child: Column(
                                    children: [
                                      for (var i = 0; i < 10; i++)
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('Content'),
                                        ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          icon: const Text('Show Dialog'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        PopupMenuButton<String>(
                          icon: const Text('Show Popup-menu'),
                          initialValue: 'Hello',
                          itemBuilder: (context) {
                            return [
                              for (final string in ['a', 'b', 'c'])
                                PopupMenuItem(
                                  value: string,
                                  child: Text(string),
                                )
                            ];
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Chip(label: Text('Ch-ch-ch-Chip n Dale ')),
                        const SizedBox(
                          width: 10,
                        ),
                        Chip(
                          label: const Text('Rescue Rangers'),
                          onDeleted: () {},
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const ChoiceChip(
                          label: Text('Ch-ch-ch-Chip n Dale '),
                          selected: false,
                          onSelected: null,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ChoiceChip(
                          label: const Text('When there s danger '),
                          selected: true,
                          onSelected: (value) {},
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const ChoiceChip(
                          label: Text('No,no it never fails'),
                          selected: true,
                          onSelected: null,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ChoiceChip(
                          label: const Text('Once they re involved'),
                          selected: false,
                          onSelected: (value) {},
                        )
                      ],
                    )
                  ],
                ),
              ),
              ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(15.0),
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Column(
                        children: [
                          const Text('Checkbox'),
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (_) {}),
                              Checkbox(value: false, onChanged: (_) {}),
                              const Checkbox(value: true, onChanged: null),
                              const Checkbox(value: false, onChanged: null),
                            ],
                          ),
                          const Text('Radio'),
                          Row(
                            children: [
                              Radio(
                                value: true,
                                groupValue: true,
                                onChanged: (_) {},
                              ),
                              Radio(
                                value: false,
                                groupValue: true,
                                onChanged: (_) {},
                              ),
                              const Radio(
                                value: true,
                                groupValue: true,
                                onChanged: null,
                              ),
                              const Radio(
                                value: false,
                                groupValue: true,
                                onChanged: null,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Switch(onChanged: (value) {}, value: true),
                        const Text('Yes'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Switch(onChanged: (value) {}, value: false),
                        const Text('No'),
                      ],
                    ),
                    Row(
                      children: const <Widget>[
                        Switch(
                          value: true,
                          onChanged: null,
                        ),
                        Text('Disabled Yes'),
                      ],
                    ),
                    Row(
                      children: const <Widget>[
                        Switch(
                          value: false,
                          onChanged: null,
                        ),
                        Text('Disabled No'),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: const [
                        CircularProgressIndicator(),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(18.0),
                    child: LinearProgressIndicator(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
