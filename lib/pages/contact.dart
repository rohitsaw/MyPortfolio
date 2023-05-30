import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:url_launcher/url_launcher_string.dart';

import '../widgets/MyChip.dart';
import '../widgets/MyIcon.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.grey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(top: 30),
              height: 200,
              width: 200,
              child: CircleAvatar(
                backgroundImage: AssetImage("asset/images/Rohit.jpg"),
              ),
            ),
            Text(
              'Rohit Saw',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            FittedBox(
              child: Text(
                'ASPIRING SOFTWARE DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  color: Colors.black,
                ),
              ),
            ),
            LayoutBuilder(
              builder: (context, constraints) => SizedBox(
                height: 10,
                child: Divider(
                  color: Colors.grey.shade500,
                  endIndent: constraints.maxWidth * 0.20,
                  indent: constraints.maxWidth * 0.20,
                ),
              ),
            ),
            Container(
              color: Colors.transparent,
              child: ListTile(
                title: Center(
                  child: InkWell(
                    splashColor: Colors.grey,
                    onTap: () => launchUrlString(
                      'mailto: developer.rohitsaw@gmail.com',
                    ),
                    child: Tooltip(
                      message: " Tap to send a mail to me! ",
                      preferBelow: false,
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Pacifico',
                      ),
                      child: Text(
                        'developer.rohitsaw@gmail.com',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Pacifico',
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsetsDirectional.only(bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Resume!",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Pacifico',
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(width: 10),
                  MyIcon(
                    color: Colors.blue,
                    icon: FontAwesomeIcons.arrowCircleDown,
                    actionurl:
                        "https://drive.google.com/file/d/1U26LzIIGz9c3Ia25Ov_BkcPep4xKVrcc/view?usp=share_link",
                  ),
                ],
              ),
            ),
            MyChip(
              actionurl: 'https://www.linkedin.com/in/rsaw409/',
              imagepath: 'asset/images/linkedin.jpeg',
              chiptext: 'LinkedIn',
            ),
          ],
        ),
      ),
    );
  }
}
