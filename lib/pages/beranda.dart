import 'package:flutter/material.dart';
import 'package:panduansholat2/pages/ashar.dart';
import 'package:panduansholat2/pages/dzuhur.dart';
import 'package:panduansholat2/pages/isya.dart';
import 'package:panduansholat2/pages/juzAmma.dart';
import 'package:panduansholat2/pages/kiblat.dart';
import 'package:panduansholat2/pages/maghrib.dart';
import 'package:panduansholat2/pages/subuh.dart';
import 'package:panduansholat2/theme.dart';
import 'package:panduansholat2/widget/menu_card.dart';

class Beranda extends StatelessWidget {
  const Beranda({Key? key}) : super(key: key);

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
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Info ditekan')),
                      );
                    },
                    child: Image.asset(
                      'assets/btn_info.png',
                      width: 35,
                    ),
                  ),
                  Text(
                    'Beranda',
                    style: titlePage,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Kiblat())));
                    },
                    child: Image.asset(
                      'assets/btn_kiblat.png',
                      width: 37,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) => Subuh())));
                      },
                      child: MenuCard(
                          image: 'assets/subuh.png',
                          title: 'Subuh',
                          subtitle: '2 Rakaat'),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const Dzuhur())));
                      },
                      child: MenuCard(
                          image: 'assets/dzuhur.png',
                          title: 'Dzuhur',
                          subtitle: '4 Rakaat'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) => Ashar())));
                      },
                      child: MenuCard(
                          image: 'assets/ashar.png',
                          title: 'Ashar',
                          subtitle: '4 Rakaat'),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Maghrib())));
                      },
                      child: MenuCard(
                          image: 'assets/maghrib.png',
                          title: 'Maghrib',
                          subtitle: '3 Rakaat'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) => Isya())));
                      },
                      child: MenuCard(
                          image: 'assets/isya.png',
                          title: 'Isya',
                          subtitle: '4 Rakaat'),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => JuzAmma())));
                      },
                      child: MenuCard(
                          image: 'assets/juzamma.png',
                          title: 'Juz \' Amma',
                          subtitle: '37 Surat'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
