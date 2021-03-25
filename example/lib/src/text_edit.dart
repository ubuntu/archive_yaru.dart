import 'package:flutter/material.dart';

/// a Widget that demonstrates `Yaru` package fonts
class TextEditingShowCase extends StatefulWidget {
  /// allows a `const` constructor
  /// the key allows only one widget in the `tree`
  const TextEditingShowCase()
      : super(key: const ValueKey('TextEditingShowCase'));

  @override
  _TextEditingShowCaseState createState() => _TextEditingShowCaseState();
}

class _TextEditingShowCaseState extends State<TextEditingShowCase> {
  late final TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController()
      ..text = 'My code fails, I do not know why.\n'
          'My code works, I do not know why.\n'
          'Text in other scripts: '
          'Tamaziɣt Taqbaylit, '
          '中文(简体), '
          'Čeština, '
          'Беларуская, '
          'Ελληνικά, '
          'עברית, '
          'Русский, '
          'བོད་ཡིག, '
          'Norsk bokmål.';
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.multiline,
      controller: _controller,
      minLines: 5,
      maxLines: 5,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
      ),
    );
  }
}
