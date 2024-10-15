import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_app/screens/bottom_navigator/hadeth.dart';
import 'package:islamy_app/theme/image.dart';

class HadethTab extends StatelessWidget {
  const HadethTab({super.key});
  static const String routeName = "Hadeth Tab";

  Widget build(BuildContext context) {
    HadethModel hadethModel =
        ModalRoute.of(context)!.settings.arguments as HadethModel;

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
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                size: 30,
                Icons.arrow_back,
                color: Theme.of(context).colorScheme.secondary,
              )),
          title: Text(AppLocalizations.of(context)!.islamy),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .01,
              vertical: MediaQuery.of(context).size.height * .01),
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .07,
              vertical: MediaQuery.of(context).size.height * .05),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Theme.of(context).colorScheme.onPrimary.withAlpha(170)),
          child: Column(
            children: [
              Text(
                hadethModel.name,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Divider(
                indent: MediaQuery.of(context).size.width * .09,
                endIndent: MediaQuery.of(context).size.width * .09,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * .04,
                      vertical: MediaQuery.of(context).size.height * .01),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Text(
                        hadethModel.content,
                        style: Theme.of(context).textTheme.titleSmall,
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                      );
                    },
                    itemCount: 1,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
