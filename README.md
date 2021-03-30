[![Pub Package](https://img.shields.io/pub/v/yaru.svg)](https://pub.dev/packages/yaru)

Ubuntu [Yaru](https://github.com/ubuntu/yaru) Style - Distinct look and feel of the Ubuntu Desktop

![Example app using Yaru light style](https://raw.githubusercontent.com/ubuntu/yaru.dart/main/doc/readme/screenshot_light.png)
![Example app using Yaru dark style](https://raw.githubusercontent.com/ubuntu/yaru.dart/main/doc/readme/screenshot_dark.png)

## Using Yaru
To be able to use this package follow this steps:
1. [Installation](https://pub.dev/packages/yaru/install)
1. Inside your `MaterialApp` you have to pass the `yaru.theme` which is the standard yaru theme.

```dart
MaterialApp(
      theme: yaru.theme,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Yaru Theme'),
        ),
        body: Container(),
      ),
    );
```

## Contributing to yaru.dart

We welcome contributions! See the [contribution guide](CONTRIBUTING.md) for more details.

## Flutter Version

Ubuntu Yaru Style requires Flutter 2. If you get an error about the current Dart SDK version similar to


```
[yaru.dart] flutter pub get
Running "flutter pub get" in yaru.dart...
The current Dart SDK version is 2.12.0-281.0.dev.

Because yaru requires SDK version >=2.12.0 <3.0.0, version solving failed.
pub get failed (1; Because yaru requires SDK version >=2.12.0 <3.0.0, version solving failed.)
exit code 1
```

please try upgrading to Flutter 2 by running 

```
flutter upgrade
```
