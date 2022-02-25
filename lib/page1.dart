// ignore_for_file: camel_case_types

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:projet_tourisme/carousol.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:projet_tourisme/screens/Home_Screens.dart';

import 'LineFive.dart';

import 'LineOne.dart';

import 'RowInkWel.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  _page1State createState() => _page1State();
}

class _page1State extends State<page1> {
  // double _currentPosition = 0.0;

  // get pageLength => null;

  // get currentIndexPage => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE7EAEF),
      // appBar: AppBar(
      //   elevation: 0.0,
      //   backgroundColor: Color(0xFFE7EAEF),
      // ),
      body: ListView(
        children: <Widget>[
          carousol(),
//           DotsIndicator(
//   dotsCount: pageLength,
//   position: currentIndexPage,
//   decorator: DotsDecorator(
//     size: const Size.square(9.0),
//     activeSize: const Size(18.0, 9.0),
//     activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
//   ),
// ),
          Padding(
            padding: const EdgeInsets.all(21.0),
            child: Column(
              children: [
                RowInkWel(),
                SizedBox(
                  height: 40,
                ),
                LineOne(),
                SizedBox(
                  height: 20,
                ),
                LineFive(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
