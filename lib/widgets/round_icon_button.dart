import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Colors.white,
        size: 15.0,
      ),
      constraints: BoxConstraints.tightFor(width: 40.0, height: 40.0),
      shape: CircleBorder(),
      fillColor: Colors.blueAccent,
      elevation: 6.0,
      onPressed: onPressed,
    );
  }
}
