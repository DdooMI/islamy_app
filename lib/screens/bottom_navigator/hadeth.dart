import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/screens/bottom_navigator/tabs/hadeth_tab.dart';
import 'package:islamy_app/theme/image.dart';

class Hadeth extends StatefulWidget {
  const Hadeth({super.key});
  static const String routeName = "Hadeth";

  @override
  State<Hadeth> createState() => _HadethState();
}

class _HadethState extends State<Hadeth> {
  List<HadethModel> hadethModelList = [];
  @override
  Widget build(BuildContext context) {
    if (hadethModelList.isEmpty) loadHadeth();
    return Column(
      children: [
        Image.asset(
          AppImages.hadethHeader,
          height: MediaQuery.of(context).size.height * 0.25,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(HadethTab.routeName,
                      arguments: HadethModel(
                          name: hadethModelList[index].name,
                          content: hadethModelList[index].content));
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * .02,
                      vertical: MediaQuery.of(context).size.height * .01),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      hadethModelList[index].name,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onTertiary),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              );
            },
            itemCount: hadethModelList.length,
          ),
        )
      ],
    );
  }

  loadHadeth() async {
    List<HadethModel> _hadethModelList = [];
    String data = await rootBundle.loadString('assets/hadeth/ahadeth.txt');
    List<String> hadethList = data.trim().split('#');
    hadethList.removeWhere((e) => e.trim().isEmpty);
    for (int i = 0; i < hadethList.length; i++) {
      int index = hadethList[i].trim().indexOf('\n');
      String name = hadethList[i].trim().substring(0, index);
      String content = hadethList[i].trim().substring(index + 1);
      _hadethModelList.add(HadethModel(name: name, content: content));
    }
    hadethModelList = _hadethModelList;
    setState(() {});
  }
}

class HadethModel {
  String name;
  String content;
  HadethModel({required this.name, required this.content});
}
