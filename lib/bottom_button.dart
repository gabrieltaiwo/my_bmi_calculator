import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            color: kactiveCardColour,
            margin: EdgeInsets.only(top: 5.0),
            //padding: EdgeInsets.only(bottom: 20.0),
            width: double.infinity,
            height: kbottomContainerHeight,
            child: Center(
              //child: SvgPicture.asset("images/PacMan.svg"),
              child: Text(
                buttonTitle,
                style: kbblabelTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
