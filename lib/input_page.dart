import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

class CardChildWidget extends StatelessWidget {
  final IconData cardIcon;
  final String cardText;

  CardChildWidget({this.cardIcon, this.cardText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          cardIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          cardText,
          style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
        )
      ],
    );
  }
}

class reusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  Function function;

  reusableCard({@required this.colour, this.cardChild,this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function ,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
