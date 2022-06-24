import 'package:flutter/material.dart';
import 'package:panduansholat2/model/surat_model.dart';
import 'package:panduansholat2/pages/detail_surat.dart';
import 'package:panduansholat2/theme.dart';

class JuzAmma extends StatefulWidget {
  const JuzAmma({Key? key}) : super(key: key);

  @override
  State<JuzAmma> createState() => _JuzAmmaState();
}

class _JuzAmmaState extends State<JuzAmma> {
  static List<SuratModel> main_surat_list = [
    SuratModel(1, "An-Naba\'"),
    SuratModel(2, "An-Nazi\'at"),
    SuratModel(3, "\'Abasa"),
    SuratModel(4, "At-Takwir"),
    SuratModel(5, "Al-Infitar"),
    SuratModel(6, "Al-Mutaffifin"),
    SuratModel(7, "Al-Insyiqaq "),
    SuratModel(8, "Al-Buruj "),
    SuratModel(9, "At-Tariq "),
    SuratModel(10, "Al-A\'la"),
    SuratModel(11, "Al-Gasyiyah "),
    SuratModel(12, "Al-Fajr"),
    SuratModel(13, "Al-Balad "),
    SuratModel(14, "Asy-Syams"),
    SuratModel(15, "Al-Lail"),
    SuratModel(16, "Ad-Duha"),
    SuratModel(17, "Asy-Syarh"),
    SuratModel(18, "At-Tin"),
    SuratModel(19, "Al-\'Alaq "),
    SuratModel(20, "Al-Qadr"),
    SuratModel(21, "Al-Bayyinah "),
    SuratModel(22, "Az-Zalzalah "),
    SuratModel(23, "Al-\'Adiyat"),
    SuratModel(24, "Al-Qari\'ah"),
    SuratModel(25, "At-Takasur"),
    SuratModel(26, "Al-\'Asr"),
    SuratModel(27, "Al-Humazah"),
    SuratModel(28, "Al-Fil"),
    SuratModel(29, "Quraisy"),
    SuratModel(30, "Al-Ma\'un "),
    SuratModel(31, "Al-Kausar"),
    SuratModel(32, "Al-Kafirun"),
    SuratModel(33, "An-Nasr"),
    SuratModel(34, "Al-Lahab "),
    SuratModel(35, "Al-Ikhlas"),
    SuratModel(36, "Al-Falaq "),
    SuratModel(37, "An-Nas"),
  ];

  List<SuratModel> display_list = List.from(main_surat_list);

  void updateList(String value) {
    // this is the function that will filter our list
    setState(() {
      display_list = main_surat_list
          .where((element) =>
              element.nama_surat!.toLowerCase().contains(value.toLowerCase()))
          .toList();
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
                    'Juz \' Amma',
                    style: titlePage,
                  ),
                  SizedBox(
                    height: 37,
                    width: 37,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Container(
                  width: double.infinity,
                  height: 46,
                  decoration: BoxDecoration(
                      border: Border.all(color: redJuzColor),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    onChanged: (value) => updateList(value),
                    cursorColor: redJuzColor,
                    style: subTitleMenu.copyWith(fontSize: 14),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: redJuzColor,
                          size: 22,
                        ),
                        hintText: 'Cari Surat'),
                  ),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: display_list.length,
                      itemBuilder: (context, index) => GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => DetailSurat())));
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 15),
                                height: 56,
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: redJuzColor,
                                      radius: 15,
                                      child: Text(
                                        display_list[index]
                                            .no_surat!
                                            .toString(),
                                        style: playSholat.copyWith(
                                            color: Colors.white, fontSize: 13),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      display_list[index].nama_surat!,
                                      style: playSholat,
                                    )
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
