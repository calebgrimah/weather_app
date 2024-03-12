import 'package:isar/isar.dart';

part 'dark_mode_preference.g.dart';

@collection
class EnumCollection {
  Id? id;
  @Enumerated(EnumType.name)
  DarkModePreference? darkModePreference;
}

enum DarkModePreference {
  alwaysDark,
  alwaysLight,
  accordingToSystemPreferences
}
