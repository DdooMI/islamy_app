import 'package:flutter/material.dart';
import 'package:islamy_app/provider/theme_provider.dart';
import 'package:islamy_app/screens/bottom_navigator/bottom_navigator_bar.dart';
import 'package:islamy_app/screens/bottom_navigator/tabs/hadeth_tab.dart';
import 'package:islamy_app/screens/bottom_navigator/tabs/quran_tab.dart';
import 'package:islamy_app/screens/splash/splash_screen.dart';
import 'package:islamy_app/theme/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (_) => ThemeProvider(), child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: Provider.of<ThemeProvider>(context).appThemeMode,
      routes: {
        SplashScreen.routeName: (_) => const SplashScreen(),
        BottomNavigatorBar.routeName: (_) => const BottomNavigatorBar(),
        QuranTab.routeName: (_) => const QuranTab(),
        HadethTab.routeName: (_) => const HadethTab()
      },
      home: const SplashScreen(),
    );
  }
}
