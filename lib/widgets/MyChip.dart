import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MyChip extends StatefulWidget {
  final actionurl, imagepath, chiptext;

  MyChip({this.actionurl, this.imagepath, this.chiptext});

  @override
  _MyChipState createState() => _MyChipState();
}

class _MyChipState extends State<MyChip> with SingleTickerProviderStateMixin {
  late bool _onHover;

  @override
  void initState() {
    super.initState();
    _onHover = false;
  }

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: "click to see in ${widget.chiptext}",
      child: InkWell(
        splashColor: Colors.greenAccent,
        onHover: (value) {
          if (value) {
            setState(() {
              print("chip hover start");
              _onHover = true;
            });
          } else {
            setState(() {
              _onHover = false;
            });
          }
        },
        onTap: () => launchUrlString(widget.actionurl),
        child: Chip(
          elevation: _onHover ? 10 : 0,
          backgroundColor: _onHover ? Colors.green : Colors.grey[350],
          avatar: CircleAvatar(
            backgroundImage: AssetImage(widget.imagepath),
          ),
          label: Text(
            widget.chiptext,
            style: TextStyle(
              fontFamily: 'Pacifico',
            ),
          ),
        ),
      ),
    );
  }
}
