import 'package:flutter/material.dart';

class LocalizationProvider with ChangeNotifier {
  String appLocal = "en";

  changeLocal(String local) {
    appLocal = local;
    notifyListeners();
  }
}
