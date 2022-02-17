import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class RowInkWel extends StatelessWidget {
  const RowInkWel({
    Key? key,
  }) : super(key: key);
  get icon => null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              width: 80,
              height: 70,
              decoration: BoxDecoration(
                  color: Color(0xff98B821),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Color(0xFFE7EAEF),
                    size: 30,
                  ),
                  Text(
                    "Favorite",
                    style: TextStyle(
                      color: Color(0xFFE7EAEF),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'SyneTactile',
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: 80,
              height: 70,
              decoration: BoxDecoration(
                  color: Color(0xff98B821),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search,
                    color: Color(0xFFE7EAEF),
                    size: 30,
                  ),
                  Text(
                    "Recherche",
                    style: TextStyle(
                      color: Color(0xFFE7EAEF),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'SyneTactile',
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: 80,
              height: 70,
              decoration: BoxDecoration(
                  color: Color(0xff98B821),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    IconlyLight.calendar,
                    color: Color(0xFFE7EAEF),
                    size: 30,
                  ),
                  Text(
                    "Agenda",
                    style: TextStyle(
                      color: Color(0xFFE7EAEF),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'SyneTactile',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
