import 'package:flutter/material.dart';

class FontsView extends StatelessWidget {
  const FontsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(15.0),
      children: <Widget>[
        Text(
          'headline1',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        Text(
          'headline2',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        Text(
          'headline3',
          style: Theme.of(context).textTheme.displaySmall,
        ),
        Text(
          'headline4',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          'headline5',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Text(
          'headline6',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          'subtitle1',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          'subtitle2',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Text(
          'bodyText1',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          'bodyText2',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          'caption',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Text(
          'button',
          style: Theme.of(context).textTheme.labelLarge,
        ),
        Text(
          'overline',
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ],
    );
  }
}
