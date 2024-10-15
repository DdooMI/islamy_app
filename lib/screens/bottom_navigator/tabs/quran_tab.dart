import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_app/screens/bottom_navigator/quraan.dart';
import 'package:islamy_app/theme/image.dart';

class QuranTab extends StatefulWidget {
  const QuranTab({super.key});
  static const String routeName = "quranTab";

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  List<String> virses = [];

  @override
  Widget build(BuildContext context) {
    QuranModel quranModel =
        ModalRoute.of(context)!.settings.arguments as QuranModel;

    loadSuraContent(quranModel.index);
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
                "سورة ${quranModel.name}",
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
                    child: ListView(
                      children: [
                        quranModel.index > 0
                            ? Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    "بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ",
                                    style:
                                        Theme.of(context).textTheme.titleSmall,
                                  ),
                                ),
                              )
                            : Container(),
                        RichText(
                            textDirection: TextDirection.rtl,
                            text: TextSpan(
                                style: Theme.of(context).textTheme.titleSmall,
                                children: virses
                                    .map((virse) => TextSpan(children: [
                                          TextSpan(text: virse),
                                          TextSpan(
                                              text:
                                                  '(${virses.indexOf(virse) + 1}) ')
                                        ]))
                                    .toList()))
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> loadSuraContent(int index) async {
    String data = await rootBundle.loadString('assets/quran/${index + 1}.txt');
    virses = data.trim().split('\n');
    setState(() {});
  }
}
