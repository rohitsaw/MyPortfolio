import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/MyChip.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, device) => SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Programming link heading
            Container(
              padding: EdgeInsets.only(
                top: device.maxHeight * 0.04,
                left: device.maxWidth * 0.05,
                bottom: device.maxHeight * 0.02,
              ),
              child: FittedBox(
                child: Text(
                  "Programming Links",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Pacifico',
                    fontSize: 40,
                  ),
                ),
              ),
            ),

            // container that contains programming links chips
            Container(
              padding: EdgeInsets.only(
                left: device.maxWidth * 0.05,
                right: device.maxWidth * 0.05,
                bottom: device.maxHeight * 0.02,
                top: device.maxHeight * 0.02,
              ),
              child: Wrap(
                spacing: device.maxWidth * 0.005,
                runSpacing: device.maxHeight * 0.005,
                children: [
                  MyChip(
                    chiptext: 'CodeChef',
                    imagepath: 'asset/images/codechef.jpg',
                    actionurl: 'https://www.codechef.com/users/rsaw409',
                  ),
                  MyChip(
                    chiptext: 'CodeForces',
                    imagepath: 'asset/images/codeforces.jpeg',
                    actionurl: 'https://codeforces.com/profile/rsaw409',
                  ),
                  MyChip(
                    chiptext: 'HackerRank',
                    imagepath: 'asset/images/hackerrank.png',
                    actionurl: 'https://www.hackerrank.com/rsaw409',
                  ),
                  MyChip(
                    chiptext: 'HackerEarth',
                    imagepath: 'asset/images/hackerearth.jpg',
                    actionurl: 'https://www.hackerearth.com/@rsaw409',
                  ),
                  MyChip(
                    chiptext: 'LeetCode',
                    imagepath: 'asset/images/leetcode.jpg',
                    actionurl: 'https://leetcode.com/rsaw409/',
                  ),
                  MyChip(
                    chiptext: 'Spoj',
                    imagepath: 'asset/images/spoj.jpeg',
                    actionurl: 'https://www.spoj.com/users/rsaw409/',
                  ),
                  MyChip(
                    chiptext: 'AtCoder',
                    imagepath: 'asset/images/atcoder.png',
                    actionurl: 'https://atcoder.jp/users/rsaw409',
                  ),
                  MyChip(
                    chiptext: 'Github',
                    imagepath: 'asset/images/github.png',
                    actionurl: 'https://github.com/rohitsaw',
                  ),
                ],
              ),
            ),

            // 1st divider
            MyHDivider(device),

            // language tools and framework heading
            Container(
              padding: EdgeInsets.only(
                top: device.maxHeight * 0.02,
                left: device.maxWidth * 0.05,
                right: device.maxWidth * 0.05,
                bottom: device.maxHeight * 0.02,
              ),
              child: Text(
                "Languages, Tools and Frameworks",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Pacifico',
                  fontSize: 30,
                ),
              ),
            ),

            //container containing language, tool and frameworks details
            LanguageContainer(device),

            // 2nd divider
            MyHDivider(device),

            // certification heading
            Container(
              padding: EdgeInsets.only(
                top: device.maxHeight * 0.02,
                left: device.maxWidth * 0.05,
                right: device.maxWidth * 0.05,
                bottom: device.maxHeight * 0.02,
              ),
              child: Text(
                "Certifications",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Pacifico',
                  fontSize: 40,
                ),
              ),
            ),

            // container containing certifications details
            Container(
              padding: EdgeInsets.only(
                top: device.maxHeight * 0.02,
                left: device.maxWidth * 0.05,
                right: device.maxWidth * 0.05,
                bottom: device.maxHeight * 0.02,
              ),
              child: LayoutBuilder(
                builder: (context, constraints) => Wrap(
                  spacing: device.maxWidth * 0.02,
                  runSpacing: device.maxHeight * 0.02,
                  children: [
                    Container(
                      width: constraints.maxWidth > 1000
                          ? constraints.maxWidth * 0.3
                          : constraints.maxWidth * 0.9,
                      child: ListTile(
                        onTap: () {
                          launch(
                              "https://www.codechef.com/certificates/public/24f5562");
                        },
                        leading: CircleAvatar(
                          radius: 50.0,
                          backgroundImage:
                              AssetImage('asset/images/codechef.jpg'),
                        ),
                        title: Text(
                          'CCDSAP Foundation level',
                          style: TextStyle(
                            fontFamily: 'Pacifico',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: constraints.maxWidth > 1000
                          ? constraints.maxWidth * 0.3
                          : constraints.maxWidth * 0.9,
                      child: ListTile(
                        onTap: () {
                          launch(
                              'https://graduation.udacity.com/confirm/TTALJ7F');
                        },
                        leading: CircleAvatar(
                          radius: 50.0,
                          backgroundImage:
                              AssetImage("asset/images/udacity.png"),
                        ),
                        title: Text(
                          'Udacity C++ Nanodegree Program',
                          style: TextStyle(
                            fontFamily: 'Pacifico',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: constraints.maxWidth > 1000
                          ? constraints.maxWidth * 0.3
                          : constraints.maxWidth * 0.9,
                      child: ListTile(
                        onTap: () {
                          launch(
                            'https://www.coursera.org/account/accomplishments/specialization/DF8UCJXQN4DN',
                          );
                        },
                        leading: CircleAvatar(
                          radius: 50.0,
                          backgroundImage:
                              AssetImage('asset/images/coursera.jpeg'),
                        ),
                        title: Text(
                          'Python for Everybody Specialization',
                          style: TextStyle(
                            fontFamily: 'Pacifico',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // 3rd divider
            MyHDivider(device),
          ],
        ),
      ),
    );
  }
}

class LanguageContainer extends StatelessWidget {
  final device;
  LanguageContainer(this.device);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: device.maxWidth * 0.05,
        right: device.maxWidth * 0.05,
        bottom: device.maxHeight * 0.02,
        top: device.maxHeight * 0.02,
      ),
      width: double.infinity,
      child: (device.maxWidth > 1150)
          ? IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ExperienceBox(device),
                  ),
                  MyVDivider(device),
                  Expanded(
                    child: IntermediateBox(device),
                  ),
                  MyVDivider(device),
                  Expanded(
                    child: FamiliarBox(device),
                  ),
                ],
              ),
            )
          : Column(
              children: [
                ExperienceBox(device),
                MyHDivider(device),
                IntermediateBox(device),
                MyHDivider(device),
                FamiliarBox(device),
              ],
            ),
    );
  }
}

class MyHDivider extends StatelessWidget {
  final device;
  MyHDivider(this.device);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Divider(
        height: device.maxHeight * 0.01,
        thickness: 2,
        color: Colors.grey.shade500,
        endIndent: device.maxWidth * 0.04,
        indent: device.maxWidth * 0.04,
      ),
    );
  }
}

class MyVDivider extends StatelessWidget {
  final device;
  MyVDivider(this.device);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: VerticalDivider(
        thickness: 2,
        width: device.maxWidth * 0.01,
        color: Colors.grey.shade500,
      ),
    );
  }
}

class ExperienceBox extends StatelessWidget {
  final device;
  ExperienceBox(this.device);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            bottom: device.maxHeight * 0.04,
          ),
          child: FittedBox(
            child: Text(
              "Experience",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Pacifico',
                fontSize: 20,
              ),
            ),
          ),
        ),
        Wrap(
          spacing: device.maxWidth * 0.01,
          runSpacing: device.maxHeight * 0.01,
          children: [
            Chip(
              backgroundColor: Colors.grey[350],
              label: Text(
                "C++",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                ),
              ),
            ),
            Chip(
              backgroundColor: Colors.grey[350],
              label: Text(
                "Python",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                ),
              ),
            ),
            Chip(
              backgroundColor: Colors.grey[350],
              label: Text(
                "Dart",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                ),
              ),
            ),
            Chip(
              backgroundColor: Colors.grey[350],
              label: Text(
                "Flutter",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class IntermediateBox extends StatelessWidget {
  final device;
  IntermediateBox(this.device);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            bottom: device.maxHeight * 0.04,
          ),
          child: FittedBox(
            child: Text(
              "Intermediate",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Pacifico',
                fontSize: 20,
              ),
            ),
          ),
        ),
        Wrap(
          spacing: device.maxWidth * 0.01,
          runSpacing: device.maxHeight * 0.01,
          children: [
            Chip(
              backgroundColor: Colors.grey[350],
              label: FittedBox(
                  child: Text(
                "JavaScript",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                ),
              )),
            ),
            Chip(
              backgroundColor: Colors.grey[350],
              label: FittedBox(
                  child: Text(
                "Django",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                ),
              )),
            ),
            Chip(
              backgroundColor: Colors.grey[350],
              label: FittedBox(
                  child: Text(
                "Git/Github",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                ),
              )),
            ),
            Chip(
              backgroundColor: Colors.grey[350],
              label: FittedBox(
                  child: Text(
                "Html/Css",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                ),
              )),
            ),
            Chip(
              backgroundColor: Colors.grey[350],
              label: FittedBox(
                  child: Text(
                "C",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                ),
              )),
            ),
            Chip(
              backgroundColor: Colors.grey[350],
              label: FittedBox(
                  child: Text(
                "Vs Code",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                ),
              )),
            ),
            Chip(
              backgroundColor: Colors.grey[350],
              label: FittedBox(
                  child: Text(
                "Web Programmming",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                ),
              )),
            ),
          ],
        ),
      ],
    );
  }
}

class FamiliarBox extends StatelessWidget {
  final device;
  FamiliarBox(this.device);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            bottom: device.maxHeight * 0.04,
          ),
          child: FittedBox(
            child: Text(
              "Familiar",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Pacifico',
                fontSize: 20,
              ),
            ),
          ),
        ),
        Wrap(
          spacing: device.maxWidth * 0.01,
          runSpacing: device.maxHeight * 0.01,
          children: [
            Chip(
              backgroundColor: Colors.grey[350],
              label: Text(
                "Sql",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                ),
              ),
            ),
            Chip(
              backgroundColor: Colors.grey[350],
              label: Text(
                "Linux",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                ),
              ),
            ),
            Chip(
              backgroundColor: Colors.grey[350],
              label: Text(
                "Java",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                ),
              ),
            ),
            Chip(
              backgroundColor: Colors.grey[350],
              label: FittedBox(
                  child: Text(
                "Deep Learning",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                ),
              )),
            ),
          ],
        ),
      ],
    );
  }
}
