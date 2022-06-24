import 'package:flutter/material.dart';
import 'package:panduansholat2/theme.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'dart:math';

class Kiblat extends StatefulWidget {
  const Kiblat({Key? key}) : super(key: key);

  @override
  State<Kiblat> createState() => _KiblatState();
}

class _KiblatState extends State<Kiblat> {
  //set kompas
  double? heading = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FlutterCompass.events!.listen((event) {
      setState(() {
        heading = event.heading;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/btn_back.png',
                    width: 35,
                  ),
                ),
                Text(
                  'Arah Kiblat',
                  style: titlePage,
                ),
                SizedBox(
                  height: 37,
                  width: 37,
                )
              ],
            ),
            // SizedBox(
            //   height: 150,
            // ),
            Center(
              heightFactor: 1.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '${heading!.ceil()}°',
                    style: TextStyle(
                        color: darkGreyColor,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),

                  //Show the compass
                  Padding(
                      padding: EdgeInsets.all(18),
                      child: Stack(alignment: Alignment.center, children: [
                        Image.asset('assets/circle-grey-01.png'),
                        Transform.rotate(
                          angle: ((heading != null ? heading! + 65 : 0) *
                              (pi / 180) *
                              -1),
                          child: Image.asset(
                            'assets/panahkiblat-01.png',
                            width: 600,
                            scale: 1.1,
                          ),
                        )
                      ]))
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
