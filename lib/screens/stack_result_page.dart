import 'package:flutter/material.dart';
import '../constants.dart';
import '../widgets/bottom_button.dart';
import '../widgets/reusable_card.dart';

class StackResultPage extends StatelessWidget {
  StackResultPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kactiveCardColour,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blueAccent,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          'Your Health',
          style: kappTitleTextStyle,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ReusableCard(
              //colour: kinactiveCardColour,
              cardChild: Container(
                padding: EdgeInsets.only(top: 80.0),
                child: Text(
                  bmiResult,
                  style: kBMITextStyle,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(30.0),
            width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10.0,
                )
              ],
            ),
            decoration: BoxDecoration(
              // color: kactiveCardColour,
              shape: BoxShape.rectangle,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[600],
                    offset: Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(-4.0, -4.0),
                    blurRadius: 15.0,
                    spreadRadius: 5.0),
              ],
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.grey[200],
                  Colors.grey[300],
                  Colors.grey[400],
                  Colors.grey[500],
                ],
                stops: [0.1, 0.3, 0.8, 1],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: ReusableCard(
                //colour: kactiveCardColour,
                cardChild: Column(
                  children: [
                    Center(
                      child: Text(
                        resultText.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: kresultTextStyle,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      margin: EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Center(
                          child: Text(
                            interpretation,
                            textAlign: TextAlign.center,
                            style: kBodyTextStyle,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
