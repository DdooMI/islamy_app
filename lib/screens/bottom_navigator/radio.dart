import 'package:flutter/material.dart';
import 'package:islamy_app/theme/image.dart';

class RadioQuraan extends StatelessWidget {
  const RadioQuraan({super.key});
  static const String routeName = "Radio";
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Image.asset(AppImages.radio),
        ),
        Column(
          children: [
            Text("أذاعة القرآن الكريم",
                style: Theme.of(context).textTheme.titleMedium),
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width * .7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.skip_previous,
                        size: 50,
                        color: Theme.of(context).colorScheme.onSurface,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.play_arrow_rounded,
                        size: 50,
                        color: Theme.of(context).colorScheme.onSurface,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.skip_next,
                        size: 50,
                        color: Theme.of(context).colorScheme.onSurface,
                      ))
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
