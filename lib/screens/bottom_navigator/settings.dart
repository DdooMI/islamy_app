import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_app/provider/localization_provider.dart';
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
                AppLocalizations.of(context)!.darkmode,
                style: Theme.of(context).textTheme.titleSmall,
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
                AppLocalizations.of(context)!.language,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 2,
                      color: Theme.of(context).colorScheme.onSurface,
                    )),
                child: DropdownButton<String>(
                    items: [
                      DropdownMenuItem(
                        value: 'en',
                        child: Text(AppLocalizations.of(context)!.english),
                      ),
                      DropdownMenuItem(
                        value: 'ar',
                        child: Text(AppLocalizations.of(context)!.arabic),
                      )
                    ],
                    dropdownColor: Theme.of(context).colorScheme.surface,
                    borderRadius: BorderRadius.circular(20),
                    underline: Container(),
                    value: Provider.of<LocalizationProvider>(context,
                            listen: false)
                        .appLocal,
                    style: Theme.of(context).textTheme.titleSmall,
                    onChanged: (value) {
                      if (value != null) {
                        Provider.of<LocalizationProvider>(context,
                                listen: false)
                            .changeLocal(value);
                      }
                    }),
              )
            ],
          )
        ],
      ),
    );
  }
}
