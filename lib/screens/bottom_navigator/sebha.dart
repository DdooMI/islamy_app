import 'package:flutter/material.dart';
import 'package:islamy_app/theme/image.dart';

class Sebha extends StatefulWidget {
  const Sebha({super.key});
  static const String routeName = "Sebha";

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  double rotate = 0.0;
  List<String> tasbeeh = [
    "سبحان الله",
    "الحمد لله",
    "الله اكبر",
    "استغفر الله"
  ];
  String sebhaName = "سبحان الله";
  int count = 0;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: AnimatedRotation(
              turns: rotate,
              duration: const Duration(milliseconds: 100),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 36),
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.35,
                    child: Image.asset(
                      AppImages.sebhaBody,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 40),
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: MediaQuery.of(context).size.height * 0.12,
                    child: Image.asset(
                      AppImages.sebhahead,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("عدد التسبيحات",
                  style: Theme.of(context).textTheme.titleMedium),
              Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(count.toString(),
                      style: Theme.of(context).textTheme.titleMedium)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.onSurface),
                  onPressed: () {
                    changeSebha();
                  },
                  child: Text(
                    sebhaName,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Theme.of(context).colorScheme.onError),
                  ))
            ],
          ),
        ],
      ),
    );
  }

  changeSebha() {
    rotate += 1 / 33;
    count++;

    if (count > 33) {
      index++;
      sebhaName = tasbeeh[index];
      if (index >= 3) {
        index = -1;
      }
      count = 0;
    }

    setState(() {});
  }
}
