import 'package:flutter/material.dart';
import 'package:panduansholat2/theme.dart';

class Maghrib extends StatelessWidget {
  const Maghrib({Key? key}) : super(key: key);

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
                    'Maghrib',
                    style: titlePage,
                  ),
                  SizedBox(
                    height: 37,
                    width: 37,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: maghribColor, width: 1.5)),
                child: Container(
                  height: 383,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        height: 241,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: maghribColor,
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20))),
                      ),
                      Container(
                        height: 140,
                        child: SingleChildScrollView(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            'Ushallii fardhash-Shubhi rak’ataini mustaqbilal qiblati makmuuman lillaahi ta’aalaa.\n\nArtinya: Saya (berniat) mengerjakan sholat fardhu Shubuh sebanyak dua raka’at dengan menghadap kiblat, sebagai makmum, karena Allah Ta’ala.\nUshallii fardhash-Shubhi rak’ataini mustaqbilal qiblati makmuuman lillaahi ta’aalaa.\n\nArtinya: Saya (berniat) mengerjakan sholat fardhu Shubuh sebanyak dua raka’at dengan menghadap kiblat, sebagai makmum, karena Allah Ta’ala.',
                            style: desSholat,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // SizedBox(
              //   height: 15,
              // ),
              Flexible(
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: maghribColor, width: 1.5)),
                        child: Container(
                          height: 56,
                          width: double.infinity,
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.play_circle_filled_rounded,
                                    color: maghribColor,
                                    size: 35,
                                  )),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '1. Penjelasan Subuh',
                                style: playSholat,
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: maghribColor, width: 1.5)),
                        child: Container(
                          height: 56,
                          width: double.infinity,
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.play_circle_filled_rounded,
                                    color: maghribColor,
                                    size: 35,
                                  )),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '1. Penjelasan Subuh',
                                style: playSholat,
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: maghribColor, width: 1.5)),
                        child: Container(
                          height: 56,
                          width: double.infinity,
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.play_circle_filled_rounded,
                                    color: maghribColor,
                                    size: 35,
                                  )),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '1. Penjelasan Subuh',
                                style: playSholat,
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: maghribColor, width: 1.5)),
                        child: Container(
                          height: 56,
                          width: double.infinity,
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.play_circle_filled_rounded,
                                    color: maghribColor,
                                    size: 35,
                                  )),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '1. Penjelasan Subuh',
                                style: playSholat,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
