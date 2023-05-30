import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MyIcon extends StatefulWidget {
  final icon, actionurl;
  final Color color;
  MyIcon(
      {@required this.icon,
      @required this.actionurl,
      this.color = Colors.white});

  @override
  _MyIconState createState() => _MyIconState();
}

class _MyIconState extends State<MyIcon> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isHover = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _animation,
      child: InkWell(
        onHover: (val) {
          if (val) {
            setState(() {
              _controller.forward();
              _isHover = true;
            });
          } else {
            setState(() {
              _controller.reverse();
              _isHover = false;
            });
          }
        },
        onTap: () {
          launchUrlString(widget.actionurl);
        },
        child: FaIcon(
          widget.icon,
          color: _isHover ? Colors.orange : (widget.color),
          size: 30,
        ),
      ),
    );
  }
}
