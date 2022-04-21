# colorgen.js

Usage: `colorgen <name> <RRGGBB>`

For example:

```bash
# install dependencies
$ npm i
[...]

# generate colors
$ ./colorgen.js orange e95620
Copy and paste to `lib/src/colors/yaru_colors.dart:

  static const _orangePrimaryValue = 0xFFE95620;
  static const orange = MaterialColor(_orangePrimaryValue, {
    50: Color(0xFFF9E9E7),
    100: Color(0xFFFBCCBC),
    200: Color(0xFFF9AB91),
    300: Color(0xFFF68B65),
    400: Color(0xFFF57244),
    500: Color(0xFFF45B24),
    600: Color(_orangePrimaryValue),
    700: Color(0xFFDB4F1B),
    800: Color(0xFFCD4818),
    900: Color(0xFFB43C11),
  });
```
