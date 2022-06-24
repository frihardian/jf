import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:panduansholat2/theme.dart';

class Intro3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
                width: 410,
                height: 387,
                child: LottieBuilder.asset('assets/sholatOnboarding.json')),
            SizedBox(
              height: 40,
            ),
            Text(
              'Siap Belajar ?',
              style: titleIntro,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
                'Salat merupakan bagian dari salah satu\nrukun Islam yang wajib kita penuhi',
                style: subTitleIntro,
                textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
