import 'package:flutter/material.dart';
import 'package:sholat_app/page/home/home_page.dart';

main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sholat App',
      home: HomePage(),
    );
  }
}
