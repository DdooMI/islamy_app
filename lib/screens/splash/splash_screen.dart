import 'package:flutter/material.dart';
import 'package:islamy_app/screens/bottom_navigator/bottom_navigator_bar.dart';
import 'package:islamy_app/theme/image.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const String routeName = "Splash";
  @override
  Widget build(BuildContext context) {
    Future.delayed(
        const Duration(seconds: 4),
        () => Navigator.of(context)
            .pushReplacementNamed(BottomNavigatorBar.routeName));

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.splash), fit: BoxFit.fill)),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
