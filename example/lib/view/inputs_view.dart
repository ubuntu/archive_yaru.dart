import 'package:flutter/material.dart';

class InputsView extends StatefulWidget {
  const InputsView({super.key});

  @override
  State<InputsView> createState() => _InputsViewState();
}

class _InputsViewState extends State<InputsView> {
  late TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController(
      text:
          'My code fails, I do not know why.\nMy code works, I do not know why.\nText in other scripts: Tamaziɣt Taqbaylit, 中文(简体), Čeština, Беларуская, Ελληνικά, עברית, Русский, བོད་ཡིག, Norsk bokmål.',
    );
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final buttonTextFieldRow = SizedBox(
      width: 500,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: () {},
              child: const Text('Outlined Button'),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Expanded(
            child: OutlinedButton(
              onPressed: null,
              child: Text('Outlined Button'),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Expanded(
            child: TextField(
              autofocus: true,
              decoration: InputDecoration(
                prefix: Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Icon(
                    Icons.text_fields,
                    size: 16,
                  ),
                ),
                hintText: 'Awesome Textfield',
                labelText: 'Awesome Textfield',
              ),
            ),
          ),
        ],
      ),
    );
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ListView(
        children: [
          buttonTextFieldRow,
          const SizedBox(height: 15),
          const TextField(
            decoration: InputDecoration(
              labelText: 'Username',
              prefixText: 'My Cool Prefix: ',
              suffixText: ' your nice Suffix',
            ),
          ),
          const SizedBox(height: 15),
          const TextField(
            enabled: false,
            onChanged: null,
            decoration: InputDecoration(
              labelText: 'Disabled',
            ),
          ),
          const SizedBox(height: 15),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
            ),
          ),
          const SizedBox(height: 15),
          const TextField(
            decoration: InputDecoration(
              errorText: "You're doing it wrong",
            ),
          ),
          const SizedBox(height: 15),
          TextField(
            keyboardType: TextInputType.multiline,
            controller: textController,
            minLines: 5,
            maxLines: 5,
          ),
          const SizedBox(height: 15),
          OutlinedButton(
            onPressed: () => showDialog(
              context: context,
              builder: (context) {
                return SimpleDialog(
                  contentPadding: const EdgeInsets.all(20),
                  children: [buttonTextFieldRow],
                );
              },
            ),
            child: const Text('Check in dialog'),
          )
        ],
      ),
    );
  }
}
