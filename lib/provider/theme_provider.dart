import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider with ChangeNotifier {
  bool get isDark => appThemeMode == ThemeMode.dark;
  ThemeMode? appThemeMode;

  changeThemeMode(ThemeMode themeMode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    appThemeMode = themeMode;
    if (appThemeMode == ThemeMode.dark) {
      prefs.setBool("isDark", true);
    } else {
      prefs.setBool("isDark", false);
    }
    notifyListeners();
  }

  ThemeProvider({required bool dark}) {
    appThemeMode = dark ? ThemeMode.dark : ThemeMode.light;
  }
}
