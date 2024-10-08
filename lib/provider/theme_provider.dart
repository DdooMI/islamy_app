import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool get isDark => appThemeMode == ThemeMode.dark;
  ThemeMode appThemeMode = ThemeMode.light;

  changeThemeMode(ThemeMode themeMode) {
    appThemeMode = themeMode;
    notifyListeners();
  }
}
