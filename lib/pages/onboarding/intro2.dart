import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:panduansholat2/theme.dart';

class Intro2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
                width: 410,
                height: 387,
                child:
                    LottieBuilder.asset('assets/tutorialVideoOnboarding.json')),
            SizedBox(
              height: 40,
            ),
            Text(
              'Video Tutorial',
              style: titleIntro,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
                'Tutorial lengkap dengan video dan\npenjelasan yang mudah dipahami',
                style: subTitleIntro,
                textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
