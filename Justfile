# language files
lgen:
    dart run easy_localization:generate --source-dir assets/translations --output-dir lib/gen -f keys -o locale_keys.g.dart
# .g.dart and .freezed.dart files
gen:
    dart run build_runner build