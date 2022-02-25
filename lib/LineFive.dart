import 'package:flutter/material.dart';

class LineFive extends StatelessWidget {
  const LineFive({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 171,
          height: 70,
          decoration: BoxDecoration(
              color: Color(0xFFE7EAEF), borderRadius: BorderRadius.circular(8)),
          child: Row(
            children: [
              Container(
                height: 70,
                width: 38,
                decoration: BoxDecoration(
                  color: Color(0xFF47A0D3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(6),
                    bottomLeft: Radius.circular(6),
                  ),
                  image: DecorationImage(
                      image: AssetImage("doss/images/img2.jpeg"),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                width: 133,
                height: 70,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 207, 206, 206),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(6),
                    bottomRight: Radius.circular(6),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Culture",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 171,
          height: 70,
          decoration: BoxDecoration(
              color: Color(0xFFE7EAEF), borderRadius: BorderRadius.circular(3)),
          child: Row(
            children: [
              Container(
                height: 70,
                width: 38,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 3, 88, 138),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(6),
                    bottomLeft: Radius.circular(6),
                  ),
                  image: DecorationImage(
                      image: AssetImage("doss/images/img2.jpeg"),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                width: 133,
                height: 70,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 207, 206, 206),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(6),
                    bottomRight: Radius.circular(6),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Savoir-Faire",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
