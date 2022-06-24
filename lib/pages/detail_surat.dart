import 'package:flutter/material.dart';
import 'package:panduansholat2/theme.dart';

class DetailSurat extends StatelessWidget {
  const DetailSurat({Key? key}) : super(key: key);

  final int? id = 0;

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
                    'An-Naba\'',
                    style: titlePage,
                  ),
                  SizedBox(
                    height: 37,
                    width: 37,
                  )
                ],
              ),
              Text(
                'Malaikat yang Mencabut',
                style: artiSurat,
              ),
              Text(
                '46 Ayat',
                style: artiSurat,
              ),
              Divider(
                color: redJuzColor,
                thickness: 1.3,
              ),
              Text(
                'بِسْمِ اللّٰهِ الرَّحْمٰنِ الرَّحِيْمِ',
                style: titlePage.copyWith(
                  fontSize: 20,
                  color: redJuzColor,
                ),
              ),
              Divider(
                color: redJuzColor,
                thickness: 1.3,
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) => Card(
                            // color: Colors.amber,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            child: Container(
                              height: 134,
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundColor: redJuzColor,
                                          child: Text(
                                            '${index + 1}',
                                            style: playSholat.copyWith(
                                                color: Colors.white),
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              'وَالنّٰزِعٰتِ غَرۡقًا',
                                              style: arab,
                                              textAlign: TextAlign.end,
                                            ),
                                            Text(
                                              'Wan naazi \'aati gharqa',
                                              style: latin.copyWith(
                                                  fontStyle: FontStyle.italic),
                                              textAlign: TextAlign.end,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 12),
                                      child: Text(
                                        'Demi (malaikat) yang mencabut (nyawa) dengan keras.',
                                        style: latin,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )))
            ],
          ),
        ),
      ),
    );
  }
}
