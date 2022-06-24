import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:panduansholat2/theme.dart';

class Intro1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
                width: 410,
                height: 387,
                child: LottieBuilder.asset('assets/arahkiblatOnboarding.json')),
            SizedBox(
              height: 40,
            ),
            Text(
              'Arah Kiblat',
              style: titleIntro,
            ),
            SizedBox(
              height: 15,
            ),
            Text('Temukan arah kiblat\ndi mana pun kamu berada',
                style: subTitleIntro, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
