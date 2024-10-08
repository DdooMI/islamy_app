import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
                image: AssetImage(
                    Theme.of(context).colorScheme.brightness == Brightness.light
                        ? AppImages.background
                        : AppImages.backgroundDark),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.islamy),
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
                    label: AppLocalizations.of(context)!.quran),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage(AppImages.quran),
                      size: 40,
                    ),
                    label: AppLocalizations.of(context)!.hadeth),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage(AppImages.sebhaIcn),
                      size: 40,
                    ),
                    label: AppLocalizations.of(context)!.tasbeeh),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage(AppImages.radioIcn),
                      size: 40,
                    ),
                    label: AppLocalizations.of(context)!.radio),
                BottomNavigationBarItem(
                    icon: const Icon(
                      Icons.settings,
                      size: 40,
                    ),
                    label: AppLocalizations.of(context)!.settings),
              ]),
          body: screens[selectedItem],
        ));
  }
}
