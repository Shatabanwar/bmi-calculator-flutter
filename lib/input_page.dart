import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_widget.dart';

const double buttonHeight = 80.0;
const Color activeCardColour = Color(0xFF1D1E33);
const Color inactiveCardColour = Color(0xFF111328);
const Color containerColour = Color(0xFFEB1555);

enum Gender {
  Male,
Female,
}



class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: reusableCard(
                      function: (){
                        setState(() {
                          selectedGender = Gender.Male;
                        });
                      },
                      colour: selectedGender == Gender.Male ? activeCardColour : inactiveCardColour ,
                      cardChild: CardChildWidget(
                        cardIcon: FontAwesomeIcons.mars,
                        cardText: 'MALE',

                      ),
                    ),
                  ),
                  Expanded(
                    child: reusableCard(
                      function: (){
                        setState(() {
                          selectedGender = Gender.Female;
                        });
                      },
                      colour: selectedGender == Gender.Female ? activeCardColour : inactiveCardColour,
                      cardChild: CardChildWidget(
                        cardIcon: FontAwesomeIcons.venus,
                        cardText: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: reusableCard(
                    colour: activeCardColour,
                  ),
                ),
              ],
            )),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: reusableCard(
                      colour: activeCardColour,
                    ),
                  ),
                  Expanded(
                    child: reusableCard(
                      colour: activeCardColour,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: buttonHeight,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10.0),
              color: containerColour,
            ),
          ],
        ));
  }
}




