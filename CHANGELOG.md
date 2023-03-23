# Changelog

# 0.6.1

* export colorscheme extension for convenience (#327)
* fix high contrast divider color (#326)

# 0.6.0

* Change FAB Color and shape by @Feichtmeier in https://github.com/ubuntu/yaru.dart/pull/323
* updated with new fonts by @elioqoshi in https://github.com/ubuntu/yaru.dart/pull/324

# 0.5.8

* add high contrast borders (#319)
* Use an extension for less verbose dark and light color scheme checks (#318)
* Add scrollbar margin (#317)

# 0.5.7

* Switch: use onPrimary for selected thumb to match primary track (#314)
* Menus: use surface variant in dark theme, surface in light theme (#313)
* Unify light & dark theme creation (#312)
* Remove redundant brightness arguments (#311)
* indicatorColor: use primary for both light and dark themes (#309)
* BottomNavigationBarTheme: use onSurface in dark theme (#308)
* Pass brightness to _createAppBarTheme() (#307)
* Sync light and dark themes (#306)

# 0.5.6

* TextTheme: add missing headlineLarge and labelMedium (#297)
* Example: attempt to clarify the buttons (#296)
* FilledButton proposal (#298)

# 0.5.5

* Tone down outline borders (#292)

# 0.5.4

* Use filled buttons with a grey fill and an outline (#288)
* Separate outline and divider colors (#287)
* Dark theme: lighten borders, darken input fills (#284)
* FAB colors have too high contrast (#283)

# 0.5.3

* Improve FAB style (#280)
* pubspec.yaml: restore platform map (#276)
* pubspec: add issue tracker link (#277)
* Add missing flavors & update example (#279)

# 0.5.2

* Relax Flutter version constraint to allow beta (#274)
* Regenerate package metadata (#273)

# 0.5.1

* Example fix inputs view not having a const constructor (#271)
* Fix Light theme: surface and background got incorrectly switched in 0.5.0 (#270)

# 0.5.0

* Fix button view
* Fix secondary containers and chips (#264)
* Rework all themes with from seed (#263)
* fix example (#262)
* M3 fixes (#261)
* Use GtkSettings from gtk.dart (#254)
* Bump minimum Flutter version to 3.7.0 (#260)
* Button vs. text field borders (#250)
* Fix white dividers (M3 / Flutter 3.7.0) (#259)
* CI: no need to run tests when publishing to GH pages (#257)
* Example: add macos (#258)
* Fix M3 dialogs and popups (Flutter 3.7.0) (#256)
* Fix deprecated_member_use (Flutter 3.7.0) (#255)

## 0.4.8

* Adjust TextField content padding by @jpnurmi in https://github.com/ubuntu/yaru.dart/pull/242
* Reduce AppBar height by @jpnurmi in https://github.com/ubuntu/yaru.dart/pull/243
* Remove elevation on hover from ElevatedButton by @Jupi007 in https://github.com/ubuntu/yaru.dart/pull/228
* pubspec.yaml: try adding entries for all supported platforms by @jpnurmi in https://github.com/ubuntu/yaru.dart/pull/247
* CHANGELOG.md: fix formatting by @jpnurmi in https://github.com/ubuntu/yaru.dart/pull/248

## 0.4.7

* [Frederik Feichtmeier](https://github.com/Feichtmeier)
  *  Dark theme borders: reduce opacity (#240)

## 0.4.6

* [J-P Nurmi](https://github.com/jpnurmi)
  * Disable theme variant detection in tests (#238)

## 0.4.5

* [J-P Nurmi](https://github.com/jpnurmi)
  * YaruTheme widget: build empty during accent color initialiation (#232)
  * YaruTheme widget: fix dispose() order (#233)
  * 500ms wait duration for tooltips (#236)
  * Add missing light dialog theme background color (#235)

## 0.4.4

* [Frederik Feichtmeier](https://github.com/Feichtmeier)
  * Text inputs: change cursor and icon color to onSurface (#229)
* [Paul Kepinski](https://github.com/Jupi007) 
  * Improve toggle buttons look (#226)
  * Require yaru_colors 0.1.1 (#227)
* [Yannick Mauray](https://github.com/frenchguych)
  * feat: Ubuntu Butterfly variant (#220)

## 0.4.3

* [J-P Nurmi](https://github.com/jpnurmi)
  * Fix AppBar border (#217)

## 0.4.2

* [Frederik Feichtmeier](https://github.com/Feichtmeier)
  * Dark AppBar: make border bright (#213)

## 0.4.1

* [J-P Nurmi](https://github.com/jpnurmi)
  * Use G_DECLARE_FINAL_TYPE to fix build with flutter-snap (#211)

## 0.4.0

* [jpnurmi](https://github.com/jpnurmi)
  * Update README.md (#207)
  * Page transitions (#206)
  * Introduce theme data overrides
  * Parallel CI jobs (#201)
  * CI: install packages required for build
  * YaruPlugin: define autoptr cleanup func
  * CI: build the example to catch build issues
  * CI: switch to stable channel (#196)
  * Replace GSettings with GtkSettings (#193)
  * Set minimum Flutter version to 3.3.0 (#194)
* [Carlos Nihelton](https://github.com/CarlosNihelton)
  * Page transitions consistency on desktop platforms (#203)
* [Paul Kepinski](https://github.com/Jupi007)
  * Add correct web icons from yaru_widgets.dart
* [Robert Ancell](https://github.com/robert-ancell)
  * Replace deprecated arguments with replacements (#191)
* [Frederik Feichtmeier](https://github.com/Feichtmeier)
  * Add PopupMenuTheme and improve example (#208)
  * Add common lint rules (#189)
  * Make color selection UI screen size adaptive (#187)
  * Update README.md
  * Update publish.yml
  * Setup publish to GitHub Pages (#185)

## 0.3.3
* [jpnurmi](https://github.com/jpnurmi)
  * YaruTheme: add builder method (#181)

## 0.3.2
* [Frederik Feichtmeier](https://github.com/Feichtmeier)
  * enable material3 (#177)

## 0.3.1

* [Frederik Feichtmeier](https://github.com/Feichtmeier)
  * Default to cupertino page transitions (#175)
  * Material3 fixes (#172)
* [jpnurmi](https://github.com/jpnurmi)
  * Upgrade to Flutter 3.0 & Dart 2.17 (#174)
  * Enable the `prefer_const_declarations` lint and fix findings (#171)
  * Add text selection theme (#170)

## 0.3.0
* [jpnurmi](https://github.com/jpnurmi)
  * Relax dbus version constraint (#168)
  * Add successColor and warningColor extensions for ThemeData (#167)
  * Use yaru_colors (#166)
  * Enable flutter_lints/recommended and fix findings (#165)
  * Rename yaruMate to yaruUbuntuMate for consistency (#164)
  * Reorganize themes/*.dart (#163)
  * Merge accents and flavors to variants (#162)
  * Material colors (#159)
  * example: present complete color palettes (#158)
  * Make flavor names consistent with color names (#157)
  * Add missing Ubuntu Font license (#156)
  * Pair YaruFlavor with its flavor color (#155)
  * Pair YaruAccent with its accent color (#154)
  * CI: enable tests (#153)
  * Example: show flavor colors in the palette tab (#152)
  * Specify accent colors as MaterialColor constants (#151)
  * Introduce YaruTheme widget (#150)
  * Add YaruAccent enum and getYaruXxxTheme(accent) getter (#149)
  * Let Flutter help with high-contrast colors (#148)
* [Frederik Feichtmeier](https://github.com/Feichtmeier)
  * Example: use handy_window (#161)

## 0.2.5
* [Frederik Feichtmeier](https://github.com/Feichtmeier)
  * Add high contrast themes (#144)

## 0.2.4
* [Frederik Feichtmeier](https://github.com/Feichtmeier)
  * Two more accent colors (#141)

## 0.2.3
* [Frederik Feichtmeier](https://github.com/Feichtmeier)
  * Add new accent colors from https://github.com/ubuntu/yaru/pull/3486 (#137)

## 0.2.2

* [Frederik Feichtmeier](https://github.com/Feichtmeier)
  * ToggleButtons: round toggle buttons (#135)
  * Increase border radii to match gnome themes (#134)
  * Inputs: make dense by default
  * BorderRadius: increase to match yaru gnome
  * Example: display dialog on AppBar button click

## 0.2.1

* [Frederik Feichtmeier](https://github.com/Feichtmeier)
  * Fix AppBar text and icon color in the light theme (#129)
  * Adapt constants to k* convention, add appbarheight (#128)
  * Export createYaru*Theme() functions (#127)
  * Detach appbar from yaru colors (#126)
  * Example: add web support (#125)
  * Use createYaru*Theme() functions to reduce code duplication (#124)
  * Further theme simplifications (#123)
  * Consolidate theming in common_themes (#122)
[Paul Kepinski](https://github.com/Jupi007)
  * Add missing colors from Yaru palette
[Alberto Bonacina](https://github.com/polilluminato)
  * Fix Typos in the yaru.dart flavors and Example (#114)

## 0.2.0

* [Frederik Feichtmeier](https://github.com/Feichtmeier)
  *  Reorganize yaru and add yaru flavor themes (#110)

## 0.1.8

* [Frederik Feichtmeier](https://github.com/Feichtmeier)
  * AppBar title: use normal font-weight (#107)

## 0.1.7

* [Frederik Feichtmeier](https://github.com/Feichtmeier)
  *  Clean-ups: update generated files, including a wayland window option and a test, remove unnecessary imports (#103)
  *  Add a tabbar theme and update example (#104)
  *  change light bg to FAFAFA (#105) 
* [Paul Kepinski](https://github.com/Jupi007)
  *  Make dark theme bg darker (#101)

## 0.1.6

* [Frederik Feichtmeier](https://github.com/Feichtmeier)
  *  Make the checkmarks a bit rounded (#98)
  *  Remove the fallback fonts (#99)

## 0.1.5

* [Frederik Feichtmeier](https://github.com/Feichtmeier)
  * Dark theme: Brighten up check and radios and adapt dark dialogs to gtk/shell theme (#95)

## 0.1.4

* [Frederik Feichtmeier](https://github.com/Feichtmeier)
  *  Make red 10% lighter (#91)

## 0.1.3

* [mivoligo](https://github.com/mivoligo)
  * Replace deprecated properties in AppBarTheme (#88)

## 0.1.2

* [jpnurmi](https://github.com/jpnurmi)
  * Add missing input decoration border in dark theme (#82)

## 0.1.1

* [Frederik Feichtmeier](https://github.com/Feichtmeier)
  * All TextFields should have a border in Yaru (#80)
## 0.1.0

* [Frederik Feichtmeier](https://github.com/Feichtmeier)
  * ColorTheme: darken the green (#78)

## 0.0.9

* [Frederik Feichtmeier](https://github.com/Feichtmeier)
  * ElevatedButton: improve and simplify (#76)

## 0.0.8

* [Frederik Feichtmeier](https://github.com/Feichtmeier)
  * AppBar: reduce elevation, adapt the text theme (#73) 

## 0.0.7

* [Frederik Feichtmeier](https://github.com/Feichtmeier)
  * Replace lightAubergine with orange (#70)

## 0.0.6

* [Frederik Feichtmeier](https://github.com/Feichtmeier)
  * Do not style progress indicators (yet) (#68)
  * Update readme instructions (#65)

## 0.0.5

* [Frederik Feichtmeier](https://github.com/Feichtmeier)
  * Reduce themes to 2 and update light/dark mode button (#63)
  * Fixes and improvements for Flutter 2.3 (#64)

## 0.0.4

* [Frederik Feichtmeier](https://github.com/Feichtmeier)
  * Improve dark and light theme contrast (#61)
  * Button theme fixes (#60)

## 0.0.3

* [Frederik Feichtmeier](https://github.com/Feichtmeier)
  * Example: add FAB and snackbar (#56)
  * Fix bottombar and pimp up the example (#55)
* [Arish Sultan](https://github.com/ArishSultan)
  * Fixes incorrect fontWeight, Button- and TextStyles. (#46)

## 0.0.2

* [Talat El Beick](https://github.com/elbeicktalat)
  * Fix TextField focus border regression (#52)

## 0.0.1

* [Talat El Beick](https://github.com/elbeicktalat)
  * Fixing style issues (#48)
* [Arish Sultan](https://github.com/ArishSultan)
  * Let TextStyles be different (#45)
## 0.0.0-dev.10

* [Frederik Feichtmeier](https://github.com/Feichtmeier)
  * Remove "clang-format off" comments from in CCfiles (#37)
* [Marcus Tomlinson](https://github.com/MarcusTomlinson)
  * Add "Flutter CI" workflow
  * Use has-signed-canonical-cla GitHub Action
* [Talat El Beick](https://github.com/elbeicktalat)
  * Reorganize project structure and show colors in example (#29)
* [Fabio Colella](https://github.com/fcole90)
  * Fix for screenshots not appearing on pub.dart (#28)
* [J-P Nurmi](https://github.com/jpnurmi)
  * Migrate to null-safety (#30)

## 0.0.9-dev

* [Abhishek Ghaskata](https://github.com/Abhishek01039)
  * Remove curly bracket
  * Added curly braces
  * Adding const keyword before constructor
* [Frederik Feichtmeier](https://github.com/Feichtmeier)
  * YaruDark: Slightly transparent switch track
  * update state helper methods
  * Special case dark switches, checks and radios
  * add CircularProgressIndicator to the example app
  * Theme Fixes and CircularProgressIndicator addition
  * Example: Replace or correct (deprecated) Widgets
* [Olivier Tilloy](https://github.com/oSoMoN)
  * Releasing 0.0.0-dev.5
  * Also define the theme data for OutlinedButton for the light and dark theme variants.
  * Update the colors of the AppBar with the light theme (cool * grey on white).
  * Define the theme data for OutlinedButton to fix its text * foreground color.
  * Ship extra fonts and set them as fontFamilyFallback.
  * dd_custom_command() missing VERBATIM
* [Robert Ancell](https://github.com/robert-ancell)
  * Add CONTRIBUTING.md
  * Releasing 0.0.0-dev.3
  * Add screenshot
  * Add a Yaru standard theme
  * Add a dark theme
  * Use rounded corners on buttons
  * Use full constructor for ThemeData
  * Update tooltip
  * Fix spacing and label colors
  * Add FlatButton and OutlineButton
  * Add a DropdownButton
  * Add a TextField showing an error
  * Add TextFields to example
  * Add radio buttons
  * Add buttons and checkboxes to the example
  * Drop old example code, run through dart format
  * Make the example a full Flutter app
  * Added cla-check, copied from snapcraft
* [Ken VanDine](https://github.com/kenvandine)
  * Added example that demonstrates all of the styles
  * bump version to 0.0.0-dev.8 for release
  * Updated README
  * Full url to screenshot, should fix pub.dev/packages/yaru
  * Updated description and homepage to reflect github move
  * Re-license under MPL-2.0 to reduce the barrier for use by * Flutter developers.
  * Releasing 0.0.0-dev.4
  
## 0.0.0-dev

* Initial prerelease
