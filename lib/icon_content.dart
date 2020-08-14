import 'package:flutter/material.dart';
//import 'constants.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.icon, this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.blueAccent,
          size: 50.0,
        ),
        SizedBox(
          height: 13.0,
        ),
        Text(label, style: klabelTextStyle),
      ],
    );
  }
}
