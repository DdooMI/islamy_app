import 'package:flutter/material.dart';
import 'package:islamy_app/theme/color.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      canvasColor: AppColor.mainLightColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.shifting,
          backgroundColor: AppColor.mainLightColor,
          selectedItemColor: AppColor.black,
          unselectedItemColor: Colors.white),
      appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
              fontSize: 35, fontWeight: FontWeight.w700, color: AppColor.black),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0),
      primaryColor: AppColor.mainLightColor,
      scaffoldBackgroundColor: Colors.transparent);
  static ThemeData darkTheme = ThemeData(
      canvasColor: AppColor.mainDarkColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.shifting,
          backgroundColor: AppColor.mainDarkColor,
          selectedItemColor: AppColor.gold,
          unselectedItemColor: Colors.white),
      appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
              fontSize: 35, fontWeight: FontWeight.w700, color: Colors.white),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0),
      primaryColor: AppColor.mainDarkColor,
      scaffoldBackgroundColor: Colors.transparent);
}
