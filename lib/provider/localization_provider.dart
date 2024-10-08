import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalizationProvider with ChangeNotifier {
  String appLocal = "en";

  changeLocal(String local) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    appLocal = local;
    if (appLocal == "en") {
      prefs.setString("local", "en");
    } else {
      prefs.setString("local", "ar");
    }
    notifyListeners();
  }

  LocalizationProvider({required String local}) {
    appLocal = local;
  }
}
