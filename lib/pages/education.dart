import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1150) {
          return Container(
            color: Colors.grey,
            padding: EdgeInsets.only(top: 30, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                getLogo(),
                getCollegeDetails(),
              ],
            ),
          );
        } else {
          return Container(
            color: Colors.grey,
            padding: EdgeInsets.only(top: 30, left: 30, right: 30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  getLogo(),
                  getCollegeDetails(),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}

Widget getLogo() {
  return Container(
    height: 300,
    child: AspectRatio(
      aspectRatio: 1,
      child: Image.asset(
        "asset/images/college.png",
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget getCollegeDetails() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      FittedBox(
        child: Text(
          "Haldia Institute of technology, West Bengal",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 40,
          ),
        ),
      ),
      FittedBox(
        child: Text(
          "Btech in Information Technology",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30,
          ),
        ),
      ),
      SizedBox(height: 5),
      FittedBox(
        child: Text(
          "2017-2021",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
      ),
      Text(
        "An Autonomous Institute",
        style: TextStyle(
          //color: Colors.grey,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
      ),
      Text(
        "NAAC Accredited Grade 'A' Institute",
        style: TextStyle(
          //color: Colors.grey,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
      ),
      Text(
        "NBA Accredited Program",
        style: TextStyle(
          //color: Colors.grey,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
      ),
    ],
  );
}
