import 'package:flutter/material.dart';

class ControlsView extends StatefulWidget {
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
        TabBar(controller: tabController, tabs: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text('Buttons'),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text('Checks'),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text('Switches'),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text('Progress'),
          )
        ]),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: <Widget>[
                        SizedBox(
                          width: 95,
                          child: TextButton(
                            onPressed: () => print('FlatButton'),
                            child: const Text('Click me!'),
                          ),
                        ),
                        const SizedBox(width: 15),
                        TextButton(
                          onPressed: null,
                          child: const Text("Can't click me!"),
                          autofocus: true,
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: <Widget>[
                        OutlinedButton(
                          onPressed: () => print('OutlinedButton'),
                          child: const Text('Click me!'),
                        ),
                        const SizedBox(width: 15),
                        OutlinedButton(
                          onPressed: null,
                          child: const Text("Can't click me!"),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: <Widget>[
                        ElevatedButton(
                          onPressed: () => print('RaisedButton'),
                          child: const Text('Click me!'),
                        ),
                        const SizedBox(width: 15),
                        ElevatedButton(
                          onPressed: null,
                          child: const Text("Can't click me!"),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: <Widget>[
                          DropdownButton<int>(
                            onChanged: (value) =>
                                print('DropdownButton $value'),
                            value: 1,
                            items: <DropdownMenuItem<int>>[
                              DropdownMenuItem(
                                  value: 1, child: const Text('One')),
                              DropdownMenuItem(
                                  value: 2, child: const Text('Two')),
                              DropdownMenuItem(
                                  value: 3, child: const Text('Three')),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ListView(
                shrinkWrap: true,
                padding: EdgeInsets.all(15.0),
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Column(
                        children: [
                          Text('Checkbox'),
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (_) {}),
                              Checkbox(value: false, onChanged: (_) {}),
                              Checkbox(value: true, onChanged: null),
                              Checkbox(value: false, onChanged: null),
                            ],
                          ),
                          Text('Radio'),
                          Row(
                            children: [
                              Radio(
                                  value: true,
                                  groupValue: true,
                                  onChanged: (_) {}),
                              Radio(
                                  value: false,
                                  groupValue: true,
                                  onChanged: (_) {}),
                              Radio(
                                  value: true,
                                  groupValue: true,
                                  onChanged: null),
                              Radio(
                                  value: false,
                                  groupValue: true,
                                  onChanged: null),
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
                      children: <Widget>[
                        Switch(
                          value: true,
                          onChanged: null,
                        ),
                        const Text('Disabled Yes'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Switch(
                          value: false,
                          onChanged: null,
                        ),
                        const Text('Disabled No'),
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
                      children: [
                        CircularProgressIndicator(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
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
