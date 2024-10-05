import 'package:flutter/material.dart';
import 'package:islamy_app/screens/bottom_navigator/quraan.dart';
import 'package:islamy_app/theme/image.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});
  static const String routeName = "quranTab";
  @override
  Widget build(BuildContext context) {
    QuranModel quranModel =
        ModalRoute.of(context)!.settings.arguments as QuranModel;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.background), fit: BoxFit.fill)),
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
          title: const Text('islamy'),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
