import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {@required this.colour, this.cardChild, this.cardHeight, this.onPress});
  final Color colour;
  final Widget cardChild;
  final double cardHeight;
  final Function onPress;

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
          boxShadow: [
            BoxShadow(
                color: Colors.grey[50],
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0,
                spreadRadius: 5.0),
          ],
        ),
      ),
    );
  }
}
