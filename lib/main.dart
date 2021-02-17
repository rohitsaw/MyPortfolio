import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './pages/education.dart';
import './pages/achievements.dart';
import './pages/contact.dart';
import './pages/skills.dart';

import './widgets/MyIcon.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Rohit's Portfolio",
      home: DefaultTabController(
        length: 4,
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(
            child: Text(
              "Portfolio",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 40,
                fontFamily: "LeckerliOne",
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Center(
                child: MyIcon(
                  icon: FontAwesomeIcons.facebook,
                  actionurl: "https://www.facebook.com/rohit.saw.106/",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Center(
                child: MyIcon(
                  icon: FontAwesomeIcons.twitter,
                  actionurl: "https://twitter.com/rsaw409",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Center(
                child: MyIcon(
                  icon: FontAwesomeIcons.instagram,
                  actionurl: "https://www.instagram.com/rsaw409/",
                ),
              ),
            ),
          ],
          bottom: TabBar(
            tabs: [
              FittedBox(child: Tab(text: "Educations")),
              FittedBox(child: Tab(text: "Skills")),
              FittedBox(child: Tab(text: "Achievements")),
              FittedBox(child: Tab(text: "Contact")),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Education(),
            Skills(),
            Achievements(),
            Contact(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.maps_ugc),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
