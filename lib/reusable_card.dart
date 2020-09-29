import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({
    this.colour,
    this.cardChild,
    this.cardHeight,
    this.onPress,
    //this.shadowColor
  });
  final Color colour;
  final Widget cardChild;
  final double cardHeight;
  final Function onPress;
  //final Property shadowColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        height: cardHeight,
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
          // boxShadow: shadowColor
          boxShadow: [
            BoxShadow(
                color: Colors.grey[200],
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0,
                spreadRadius: 5.0),
          ],
        ),
      ),
    );
  }
}
