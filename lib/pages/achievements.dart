import 'package:flutter/material.dart';

import 'package:grouped_list/grouped_list.dart';
import 'package:url_launcher/url_launcher.dart';

class Achievements extends StatelessWidget {
  final _achievements = [
    {
      "name": "Get Global Rank of 359 in CodeVita Season 9 Round 2 ",
      "group": "Coding Achievements",
      "link": "",
    },
    {
      "name": "Top 500 participants in HackWithInfy 200 edition",
      "group": "Coding Achievements",
      "link": "",
    },
    {
      "name": "Techgig CodeGladiators 2020 finalists",
      "group": "Coding Achievements",
      "link":
          "https://www.linkedin.com/posts/rsaw409_techgig-codegladiators-finalists-activity-6697577493412630528-hazl",
    },
    {
      "name":
          "Global Rank of 176 in credit suisse Global Coding Challenge 2020",
      "group": "Coding Achievements",
      "link":
          "https://www.linkedin.com/posts/rsaw409_globalcodingchallenge-coding-programming-activity-6732331204495900672-3Rr8",
    },
    {
      "name":
          "Get Rank of 57 out of 4353 participants in Hack the Interview IV (Asia Pacific) By hackerRank",
      "group": "Coding Achievements",
      "link":
          "https://www.linkedin.com/posts/rsaw409_check-out-my-performance-in-hack-the-interview-activity-6673094578394021888-yVvj",
    },
    {
      "name": "Expense Tracker, A flutter App publised in Google Play ",
      "group": "Projects",
      "link":
          "https://play.google.com/store/apps/details?id=com.rohitsaw.personal_expenses",
    },
    {
      "name": "SYSTEM MONITOR (LIKE HTOP IN LINUX) (C++)",
      "group": "Projects",
      "link":
          "https://github.com/rohitsaw/Udacity-Cpp-Nanodegree-Projects/tree/master/CppND-System-Monitor",
    },
    {
      "name": "PIZZA ORDERING WEBAPP (PYTHON+DJANGO+JAVASCRIPT)",
      "group": "Projects",
      "link": "https://github.com/rohitsaw/pizzahub",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GroupedListView(
          groupBy: (element) => element['group'],
          elements: _achievements,
          useStickyGroupSeparators: true,
          groupSeparatorBuilder: (val) => Container(
            padding: EdgeInsets.all(10),
            child: Text(
              val,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          itemBuilder: (context, dynamic element) => TextButton.icon(
            onPressed: () {
              launch(element['link']);
            },
            label: FittedBox(
              child: Center(
                child: Text(
                  element['name'],
                ),
              ),
            ),
            icon: Icon(Icons.arrow_right_alt),
          ),
        );
      },
    );
  }
}
