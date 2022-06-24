import 'package:flutter/material.dart';
import 'package:panduansholat2/pages/beranda.dart';
import 'package:panduansholat2/pages/onboarding/intro1.dart';
import 'package:panduansholat2/pages/onboarding/intro2.dart';
import 'package:panduansholat2/pages/onboarding/intro3.dart';
import 'package:panduansholat2/theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
              Intro1(),
              Intro2(),
              Intro3(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 387),
            child: Column(
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                      dotColor: Color(0xffE4D6E4),
                      expansionFactor: 3,
                      spacing: 10,
                      dotHeight: 10,
                      dotWidth: 10,
                      activeDotColor: darkPurpleColor),
                ),
                SizedBox(
                  height: 180,
                ),
                onLastPage
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => Beranda())));
                            },
                            child: Text(
                              'Mulai Belajar',
                              style: lanjutIntro,
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: darkPurpleColor,
                                minimumSize: Size(double.infinity, 50),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)))),
                      )
                    : Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: ElevatedButton(
                            onPressed: () {
                              _controller.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease);
                            },
                            child: Text(
                              'Lanjut',
                              style: lanjutIntro,
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: darkPurpleColor,
                                minimumSize: Size(double.infinity, 50),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)))),
                      ),
                SizedBox(height: 19),
                onLastPage
                    ? Text('')
                    : GestureDetector(
                        onTap: () {
                          _controller.jumpToPage(2);
                        },
                        child: Text(
                          'Lewati',
                          style: lewatiIntro,
                        ),
                      )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
