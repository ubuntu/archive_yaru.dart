import 'package:flutter/material.dart';

class ControlsView extends StatefulWidget {
  const ControlsView({super.key});

  @override
  State<ControlsView> createState() => _ControlsViewState();
}

class _ControlsViewState extends State<ControlsView>
    with TickerProviderStateMixin {
  late TabController tabController;
  int _counter = 0;

  final List<bool> _toggleButtons = [true, false, false];
  int _dropdownIndex = 1;

  void updateBoolList(List<bool> arr, int index) {
    if (index < 0 || index > arr.length) return;
    setState(() {
      for (int i = 0; i < arr.length; i++) {
        arr[i] = i == index;
      }
    });
  }

  void incrementCounter() {
    setState(() {
      _counter++;
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Yay! $_counter ❤️ for Yaru')));
    });
  }

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
                              child: const Text('Text'),
                            ),
                          ),
                          const SizedBox(width: 15),
                          const SizedBox(
                            width: 95,
                            child: TextButton(
                              onPressed: null,
                              autofocus: true,
                              child: Text('Disabled'),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 95,
                            child: OutlinedButton(
                              onPressed: () {},
                              child: const Text('Outlined'),
                            ),
                          ),
                          const SizedBox(width: 15),
                          const SizedBox(
                            width: 95,
                            child: OutlinedButton(
                              onPressed: null,
                              child: Text('Disabled'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 95,
                            child: FilledButton(
                              onPressed: () {},
                              child: const Text('Filled'),
                            ),
                          ),
                          const SizedBox(width: 15),
                          const SizedBox(
                            width: 95,
                            child: FilledButton(
                              onPressed: null,
                              child: Text('Disabled'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 95,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text('Elevated'),
                            ),
                          ),
                          const SizedBox(width: 15),
                          const SizedBox(
                            width: 95,
                            child: ElevatedButton(
                              onPressed: null,
                              child: Text('Disabled'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 95,
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              label: const Text('Icon'),
                              icon: const Icon(Icons.hearing_outlined),
                            ),
                          ),
                          const SizedBox(width: 15),
                          SizedBox(
                            width: 95,
                            child: ElevatedButton.icon(
                              onPressed: null,
                              label: const Text('Icon'),
                              icon: const Icon(Icons.hearing_outlined),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          ToggleButtons(
                            isSelected: _toggleButtons,
                            onPressed: (v) => updateBoolList(_toggleButtons, v),
                            children: [
                              for (final v in _toggleButtons)
                                Text(v ? 'On' : 'Off'),
                            ],
                          ),
                          const SizedBox(width: 15),
                          ToggleButtons(
                            isSelected: const [true, false, false],
                            children: const [
                              Text('Off'),
                              Text('Off'),
                              Text('Off')
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: [
                          FloatingActionButton(
                            onPressed: incrementCounter,
                            child: const Icon(Icons.plus_one),
                          ),
                          FloatingActionButton.extended(
                            onPressed: incrementCounter,
                            label: const Text('Yay! +1 ❤️ for Yaru'),
                          ),
                          FloatingActionButton.small(
                            onPressed: incrementCounter,
                            child: const Icon(Icons.plus_one),
                          ),
                          FloatingActionButton.large(
                            onPressed: incrementCounter,
                            child: const Icon(Icons.plus_one),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: <Widget>[
                          DropdownButton<int>(
                            onChanged: (v) {
                              setState(() {
                                _dropdownIndex = v ?? 1;
                              });
                            },
                            value: _dropdownIndex,
                            items: const <DropdownMenuItem<int>>[
                              DropdownMenuItem(
                                value: 1,
                                child: Text(' One '),
                              ),
                              DropdownMenuItem(
                                value: 2,
                                child: Text(' Two '),
                              ),
                              DropdownMenuItem(
                                value: 3,
                                child: Text(' Three '),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          DropdownMenu(
                            dropdownMenuEntries: [
                              DropdownMenuEntry(value: 1, label: '1'),
                              DropdownMenuEntry(value: 2, label: '2'),
                              DropdownMenuEntry(value: 3, label: '3')
                            ],
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          DropdownMenu(
                            label: Text('Label'),
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
                    const Row(
                      children: <Widget>[
                        Switch(
                          value: true,
                          onChanged: null,
                        ),
                        Text('Disabled Yes'),
                      ],
                    ),
                    const Row(
                      children: <Widget>[
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
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Row(
                      children: [
                        CircularProgressIndicator(),
                      ],
                    ),
                  ),
                  Padding(
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
