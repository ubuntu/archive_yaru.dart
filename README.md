[![Pub Package](https://img.shields.io/pub/v/yaru.svg)](https://pub.dev/packages/yaru)

Ubuntu [Yaru](https://github.com/ubuntu/yaru) Style - Distinct look and feel of the Ubuntu Desktop

![Example app using Yaru light style](https://raw.githubusercontent.com/ubuntu/yaru.dart/main/doc/readme/screenshot_light.png)
![Example app using Yaru dark style](https://raw.githubusercontent.com/ubuntu/yaru.dart/main/doc/readme/screenshot_dark.png)

## Using Yaru
To be able to use this package follow this steps:
1. [Installation](https://pub.dev/packages/yaru/install)
2. Import yaru.dart
   
    ```dart
    import 'package:yaru/yaru.dart';
    ```
3. Inside your `MaterialApp` set `theme` to `yarulight` which is the standard light theme and `darkTheme` to `yaruDark` to get the yaru dark theme. The `darkTheme` property is used when you toggle your system theme to dark:
   
    ```dart
    MaterialApp(
          theme: yaruLight,
          darkTheme: yaruDark,
          home: Scaffold(
            appBar: AppBar(
              title: Text('Yaru Theme'),
            ),
            body: Container(),
          ),
        );
    ```

## yaru.dart flavors

Yaru comes in 7x2 different versions:
- `yaruLight` & `yaruDark`
- `yaruXubuntuLight` & `yaruXubuntuDark`
- `yaruKubuntuLight` & `yaruKubuntuDark`
- `yaruLubuntuLight` & `yaruLubuntuDark`
- `yaruUbuntuStudioLight` & `yaruUbuntuStudioDark`
- `yaruMateLight` & `yaruMateDark`
- `yaruUbuntuBudgieLight` & `yaruUbuntuBudgieDark`

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
