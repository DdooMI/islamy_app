import 'package:flutter/material.dart';
import 'package:islamy_app/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Dark Mode",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Switch(
                  inactiveTrackColor: Theme.of(context).colorScheme.onSecondary,
                  activeColor: Theme.of(context).colorScheme.onSurface,
                  value:
                      Provider.of<ThemeProvider>(context, listen: false).isDark,
                  onChanged: (value) {
                    Provider.of<ThemeProvider>(context, listen: false)
                        .changeThemeMode(
                            value ? ThemeMode.dark : ThemeMode.light);
                  })
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Language",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 2,
                      color: Theme.of(context).colorScheme.onSurface,
                    )),
                child: DropdownButton<String>(
                    items: const [
                      DropdownMenuItem(
                        value: 'en',
                        child: Text("English"),
                      ),
                      DropdownMenuItem(
                        value: 'ar',
                        child: Text("عربي"),
                      )
                    ],
                    dropdownColor: Theme.of(context).colorScheme.surface,
                    borderRadius: BorderRadius.circular(20),
                    underline: Container(),
                    value: 'en',
                    style: Theme.of(context).textTheme.titleSmall,
                    onChanged: (value) {}),
              )
            ],
          )
        ],
      ),
    );
  }
}
