// ignore_for_file: camel_case_types

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:projet_tourisme/carousol.dart';

import 'LineFive.dart';
import 'LineFour.dart';
import 'LineFree.dart';
import 'LineOne.dart';
import 'LineTwo.dart';
import 'RowInkWel.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  _page1State createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE7EAEF),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFE7EAEF),
      ),
      body: ListView(
        children: <Widget>[
          carousol(),
          Padding(
            padding: const EdgeInsets.all(21.0),
            child: Column(
              children: [
                RowInkWel(),
                SizedBox(
                  height: 50,
                ),
                LineOne(),
                SizedBox(
                  height: 20,
                ),
                LineTwo(),
                SizedBox(
                  height: 20,
                ),
                LineFree(),
                SizedBox(
                  height: 20,
                ),
                LineFour(),
                SizedBox(
                  height: 20,
                ),
                LineFive(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff98B821),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Mon\ncarnet'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Mon\ncarnet'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Mon\ncarnet'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Mon\ncarnet'),
        ],
      ),
    );
  }
}
