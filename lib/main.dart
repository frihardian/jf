import 'package:flutter/material.dart';
import 'package:panduansholat2/pages/beranda.dart';
import 'package:panduansholat2/pages/onboarding/onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboarding(),
    );
  }
}
