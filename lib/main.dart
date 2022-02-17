import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:projet_tourisme/page1.dart';

import 'package:projet_tourisme/screens/home_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
