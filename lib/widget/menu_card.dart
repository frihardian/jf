import 'package:flutter/material.dart';
import 'package:panduansholat2/pages/JuzAmma.dart';
import 'package:panduansholat2/pages/subuh.dart';
import 'package:panduansholat2/theme.dart';

class MenuCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  MenuCard({required this.image, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          image,
          width: 163,
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: titleMenu),
              Text(subtitle, style: subTitleMenu),
            ],
          ),
        ),
      ],
    );
  }
}
