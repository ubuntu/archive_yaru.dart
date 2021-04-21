import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FontsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(15.0),
      children: <Widget>[
        Text(
          'headline1',
          style: Theme.of(context).textTheme.headline1,
        ),
        Text(
          'headline2',
          style: Theme.of(context).textTheme.headline2,
        ),
        Text(
          'headline3',
          style: Theme.of(context).textTheme.headline3,
        ),
        Text(
          'headline4',
          style: Theme.of(context).textTheme.headline4,
        ),
        Text(
          'headline5',
          style: Theme.of(context).textTheme.headline5,
        ),
        Text(
          'headline6',
          style: Theme.of(context).textTheme.headline6,
        ),
        Text(
          'subtitle1',
          style: Theme.of(context).textTheme.subtitle1,
        ),
        Text(
          'subtitle2',
          style: Theme.of(context).textTheme.subtitle2,
        ),
        Text(
          'bodyText1',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        Text(
          'bodyText2',
          style: Theme.of(context).textTheme.bodyText2,
        ),
        Text(
          'caption',
          style: Theme.of(context).textTheme.caption,
        ),
        Text(
          'button',
          style: Theme.of(context).textTheme.button,
        ),
        Text(
          'overline',
          style: Theme.of(context).textTheme.overline,
        ),
      ],
    );
  }
}
