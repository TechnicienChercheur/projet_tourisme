import 'package:flutter/material.dart';

class LineTwo extends StatelessWidget {
  const LineTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 171,
          height: 38,
          decoration: BoxDecoration(
              color: Color(0xFFE7EAEF), borderRadius: BorderRadius.circular(8)),
          child: Row(
            children: [
              Container(
                height: 38,
                width: 38,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(199, 199, 22, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(6),
                    bottomLeft: Radius.circular(6),
                  ),
                ),
                child: Icon(
                  Icons.balcony_outlined,
                  color: Colors.white,
                ),
              ),
              Container(
                width: 133,
                height: 38,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 207, 206, 206),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(6),
                    bottomRight: Radius.circular(6),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Loisirs",
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
          height: 38,
          decoration: BoxDecoration(
              color: Color(0xFFE7EAEF), borderRadius: BorderRadius.circular(8)),
          child: Row(
            children: [
              Container(
                height: 38,
                width: 38,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 3, 88, 138),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(6),
                    bottomLeft: Radius.circular(6),
                  ),
                ),
                child: Icon(
                  Icons.travel_explore,
                  color: Colors.white,
                ),
              ),
              Container(
                width: 133,
                height: 38,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 207, 206, 206),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(6),
                    bottomRight: Radius.circular(6),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Restaurants",
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
