import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:height_slider/height_slider.dart';
import 'package:mybmicalculator/reusable_card.dart';
import 'package:mybmicalculator/icon_content.dart';
// import 'package:weight_slider/weight_slider.dart';
import 'package:mybmicalculator/constants.dart';
import 'results_page.dart';
import 'round_icon_button.dart';
import 'bottom_button.dart';
import 'stack_result_page.dart';
import 'calculator_brain.dart';

const KlabelTextStyle = TextStyle(fontSize: 13.0, color: Colors.blueAccent);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 170;
  int weight = 60;
  int age = 30;

  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kactiveCardColour,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'myBMI Calculator',
          style: kappTitleTextStyle,
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: ReusableCard(
                                onPress: () {
                                  setState(() {
                                    selectedGender = Gender.male;
                                  });
                                },
                                colour: selectedGender == Gender.male
                                    ? kactiveCardColour
                                    : kinactiveCardColour,
                                cardChild: IconContent(
                                  icon: FontAwesomeIcons.mars,
                                  label: 'MALE',
                                ),
                              ),
                            ),
                            Expanded(
                              child: ReusableCard(
                                onPress: () {
                                  setState(() {
                                    selectedGender = Gender.female;
                                  });
                                },
                                colour: selectedGender == Gender.female
                                    ? kactiveCardColour
                                    : kinactiveCardColour,
                                cardChild: IconContent(
                                  icon: FontAwesomeIcons.venus,
                                  label: 'FEMALE',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: ReusableCard(
                          colour: kactiveCardColour,
                          cardChild: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'WEIGHT',
                                  style: klabelTextStyle,
                                ),
                                Text(
                                  weight.toString(),
                                  style: knumberTextStyle,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RoundIconButton(
                                      icon: FontAwesomeIcons.plus,
                                      onPressed: () {
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    RoundIconButton(
                                      icon: FontAwesomeIcons.minus,
                                      onPressed: () {
                                        setState(() {
                                          weight--;
                                        });
                                      },
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ReusableCard(
                          colour: kactiveCardColour,
                          cardChild: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'AGE',
                                  style: klabelTextStyle,
                                ),
                                Text(
                                  age.toString(),
                                  style: knumberTextStyle,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RoundIconButton(
                                      icon: FontAwesomeIcons.plus,
                                      onPressed: () {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    RoundIconButton(
                                      icon: FontAwesomeIcons.minus,
                                      onPressed: () {
                                        setState(() {
                                          age--;
                                        });
                                      },
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    child: ReusableCard(
                      colour: kactiveCardColour,
                      cardChild: Column(
                        children: <Widget>[
                          Text(
                            'HEIGHT',
                            style: klabelTextStyle,
                          ),
                          Container(
                            height: 450,
                            width: 250,
                            child: HeightSlider(
                              height: height,
                              onChange: (val) {
                                setState(() {
                                  height = val;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StackResultPage(
                    bmiResult: calc.calculateBMI(),
                    resultText: calc.getResult(),
                    interpretation: calc.getInterpretation(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
