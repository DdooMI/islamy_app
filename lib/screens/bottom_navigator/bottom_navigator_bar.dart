import 'package:flutter/material.dart';
import 'package:islamy_app/screens/bottom_navigator/hadeth.dart';
import 'package:islamy_app/screens/bottom_navigator/quraan.dart';
import 'package:islamy_app/screens/bottom_navigator/radio.dart';
import 'package:islamy_app/screens/bottom_navigator/sebha.dart';
import 'package:islamy_app/screens/bottom_navigator/settings.dart';
import 'package:islamy_app/theme/image.dart';

class BottomNavigatorBar extends StatefulWidget {
  const BottomNavigatorBar({super.key});
  static const String routeName = "BottomNavigatorBar";
  @override
  State<BottomNavigatorBar> createState() => _BottomNavigatorBarState();
}

class _BottomNavigatorBarState extends State<BottomNavigatorBar> {
  int selectedItem = 0;
  List screens = [
    Quraan(),
    const Hadeth(),
    const Sebha(),
    const RadioQuraan(),
    const Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.background), fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: const Text("islamy"),
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: selectedItem,
              onTap: (value) {
                setState(() {
                  selectedItem = value;
                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage(AppImages.quranIcn),
                      size: 40,
                    ),
                    label: "Quran"),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage(AppImages.quran),
                      size: 40,
                    ),
                    label: "Hadeth"),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage(AppImages.sebhaIcn),
                      size: 40,
                    ),
                    label: "Tasbeeh"),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage(AppImages.radioIcn),
                      size: 40,
                    ),
                    label: "Radio"),
                const BottomNavigationBarItem(
                    icon: Icon(
                      Icons.settings,
                      size: 40,
                    ),
                    label: "Settings"),
              ]),
          body: screens[selectedItem],
        ));
  }
}
