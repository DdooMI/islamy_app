import 'package:flutter/material.dart';
import 'package:islamy_app/screens/bottom_navigator/bottom_navigator_bar.dart';
import 'package:islamy_app/screens/bottom_navigator/tabs/quran_tab.dart';
import 'package:islamy_app/screens/splash/splash_screen.dart';
import 'package:islamy_app/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      routes: {
        SplashScreen.routeName: (_) => const SplashScreen(),
        BottomNavigatorBar.routeName: (_) => const BottomNavigatorBar(),
        QuranTab.routeName: (_) => const QuranTab()
      },
      home: const SplashScreen(),
    );
  }
}
