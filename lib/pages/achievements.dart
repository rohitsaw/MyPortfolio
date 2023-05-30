import 'package:flutter/material.dart';

import 'package:grouped_list/grouped_list.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
      builder: (context, device) => Container(
          child: (device.maxWidth > 900)
              ? Row(
                  children: [
                    Expanded(
                      child: ListContainer(_achievements),
                    ),
                    VerticalDivider(
                      thickness: 2,
                      color: Colors.grey.shade500,
                    ),
                    Expanded(
                      child: CardContainer(),
                    )
                  ],
                )
              : Column(
                  children: [
                    Expanded(
                      child: ListContainer(_achievements),
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.shade500,
                    ),
                    Expanded(
                      child: CardContainer(),
                    )
                  ],
                )),
    );
  }
}

class ListContainer extends StatelessWidget {
  final _achievements;
  ListContainer(this._achievements);

  @override
  Widget build(BuildContext context) {
    return GroupedListView(
      groupBy: (element) => (element as Map)['group'],
      elements: _achievements,
      useStickyGroupSeparators: true,
      groupSeparatorBuilder: (val) => Container(
        padding: EdgeInsets.all(10),
        child: Text(
          val.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      itemBuilder: (context, dynamic element) => TextButton.icon(
        onPressed: () {
          launchUrlString(element['link']);
        },
        label: Center(
          child: FittedBox(
            child: Text(
              element['name'],
              overflow: TextOverflow.fade,
            ),
          ),
        ),
        icon: Icon(Icons.arrow_right_alt),
      ),
    );
  }
}

class CardContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Publised App',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontFamily: 'Raleway',
            fontSize: 40,
          ),
        ),
        Expanded(
          child: LayoutBuilder(
            builder: (context, device) => GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: device.maxWidth * 0.05,
              crossAxisSpacing: device.maxWidth * 0.05,
              children: [
                Center(
                  child: AppCard(device, "assets/asset/images/codelist.png",
                      "https://play.google.com/store/apps/details?id=developer.rohitsaw.codelist"),
                ),
                Center(
                  child: AppCard(
                      device,
                      "assets/asset/images/expensetracker.png",
                      "https://play.google.com/store/apps/details?id=com.rohitsaw.personal_expenses"),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class AppCard extends StatefulWidget {
  final device;
  final imagePath;
  final appLink;

  AppCard(this.device, this.imagePath, this.appLink);

  @override
  _AppCardState createState() => _AppCardState();
}

class _AppCardState extends State<AppCard> with SingleTickerProviderStateMixin {
  late bool _hover;

  late double _hoverHight, _hoverWidth;
  late double _height, _width;

  @override
  void initState() {
    super.initState();
    _hover = false;

    _hoverHight = widget.device.maxWidth * 0.50;
    _hoverWidth = widget.device.maxWidth * 0.50;

    _height = widget.device.maxWidth * 0.30;
    _width = widget.device.maxWidth * 0.30;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (!_hover) {
          print("image path ${widget.imagePath}");
          setState(() {
            //print("appcard hover start");
            _hover = true;
          });
        } else {
          setState(() {
            _hover = false;
          });
        }
      },
      onHover: (val) {
        if (val) {
          setState(() {
            //print("image path ${widget.imagePath}");
            _hover = true;
          });
        } else {
          setState(() {
            _hover = false;
          });
        }
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        height: _hover ? _hoverHight : _height,
        width: _hover ? _hoverWidth : _width,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(16),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: widget.imagePath,
                  alignment: Alignment.topCenter,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      onPressed: () {
                        launchUrlString(widget.appLink);
                      },
                      child: Text("See in Store")),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
