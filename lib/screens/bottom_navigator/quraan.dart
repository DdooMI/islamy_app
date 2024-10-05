import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/screens/bottom_navigator/tabs/quran_tab.dart';
import 'package:islamy_app/theme/image.dart';

// ignore: must_be_immutable
class Quraan extends StatefulWidget {
  Quraan({super.key});
  static const String routeName = "Quraan";

  @override
  State<Quraan> createState() => _QuraanState();
}

class _QuraanState extends State<Quraan> {
  List suras = [
    "الفاتحة",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
  List suraType = [
    "مكية",
    "مدنية",
    "مدنية",
    "مدنية",
    "مدنية",
    "مكية",
    "مكية",
    "مدنية",
    "مدنية",
    "مكية",
    "مكية",
    "مكية",
    "مدنية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مدنية",
    "مكية",
    "مدنية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مدنية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مدنية",
    "مدنية",
    "مدنية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مدنية",
    "مكية",
    "مدنية",
    "مدنية",
    "مدنية",
    "مدنية",
    "مدنية",
    "مدنية",
    "مدنية",
    "مدنية",
    "مدنية",
    "مدنية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مدنية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مدنية",
    "مدنية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مكية",
    "مدنية",
    "مكية",
    "مكية",
    "مكية",
    "مكية"
  ];
  List<int> virsesCount = [];
  @override
  Widget build(BuildContext context) {
    if (virsesCount.isEmpty) loadSuraCount();
    return Column(
      children: [
        Image.asset(
          AppImages.quranHeader,
          height: MediaQuery.of(context).size.height * 0.25,
        ),
        virsesCount.isEmpty
            ? const Expanded(child: Center(child: CircularProgressIndicator()))
            : Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(QuranTab.routeName,
                            arguments:
                                QuranModel(name: suras[index], index: index));
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * .02,
                            vertical: MediaQuery.of(context).size.height * .01),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(20)),
                          child: ListTile(
                            leading: Text(
                              "${index + 1}",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            title: Text(
                              "سورة ${suras[index]}",
                              style: Theme.of(context).textTheme.titleMedium,
                              textAlign: TextAlign.center,
                            ),
                            subtitle: Text(
                              " عدد الآيات: ${virsesCount[index].toString()}",
                              style: Theme.of(context).textTheme.bodyMedium,
                              textAlign: TextAlign.center,
                            ),
                            trailing: Text(
                              suraType[index],
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: suras.length,
                ),
              )
      ],
    );
  }

  Future<void> loadSuraCount() async {
    List<int> _virsesCount = [];
    for (int i = 0; i < suras.length; i++) {
      String data = await rootBundle.loadString('assets/quran/${i + 1}.txt');
      List<String> content = data.trim().split('\n');
      content.removeWhere((element) => element.isEmpty);
      _virsesCount.add(content.length);
    }
    virsesCount = _virsesCount;
    setState(() {});
  }
}

class QuranModel {
  String name;
  int index;

  QuranModel({required this.name, required this.index});
}
