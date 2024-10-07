import 'package:flutter/material.dart';
import 'package:islamy_app/theme/color.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      dividerTheme: DividerThemeData(
        thickness: 3,
        color: AppColor.mainLightColor,
      ),
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: AppColor.mainLightColor,
          onPrimary: Colors.white,
          secondary: Colors.black,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          surface: AppColor.mainLightColor,
          onSurface: AppColor.mainLightColor),
      textTheme: TextTheme(
          bodyMedium: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: AppColor.black),
          titleSmall: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, color: AppColor.black),
          titleMedium: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: AppColor.black)),
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
      dividerTheme: DividerThemeData(color: AppColor.gold),
      colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: AppColor.mainDarkColor,
          onPrimary: AppColor.mainDarkColor,
          secondary: Colors.white,
          onSecondary: AppColor.gold,
          error: Colors.red,
          onError: Colors.black,
          surface: Color(0xFFBC9B15),
          onSurface: AppColor.gold),
      textTheme: const TextTheme(
          bodyMedium: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white),
          titleSmall: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
          titleMedium: const TextStyle(
              fontSize: 25, fontWeight: FontWeight.w400, color: Colors.white)),
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
