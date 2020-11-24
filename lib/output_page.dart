import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';



class OutputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(

            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,

              ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: reusableCard(colour: activeCardColour,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Normal', style: TextStyle(
                  color: Color(0xFF24D876),
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
                ), ),
                Text('18.3',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 100.0,
                    fontWeight: FontWeight.bold
                  ),


                ),

                Text('Your BMI result is low, you should eat more',
                  style: TextStyle(
                    fontSize: 22.0
                  ),

                )

              ],
            ),),

          ),
          BottomButton(onTap: (){
            Navigator.pop(context);
          }, text: Text('RE-CALCULATE'
            ,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold
            ),),)
        ],
      )

    );
  }
}
