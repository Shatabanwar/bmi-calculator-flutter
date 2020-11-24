import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';



class OutputPage extends StatelessWidget {

  OutputPage({@required this.bmi, @required this.resultText, @required this.interpretation});

  final String bmi;
  final String resultText;
  final String interpretation;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
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
                Text(resultText.toUpperCase(), style: TextStyle(
                  color: Color(0xFF24D876),
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
                ), ),
                Text(bmi,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 100.0,
                    fontWeight: FontWeight.bold
                  ),


                ),

                Text(interpretation,
                  textAlign: TextAlign.center,
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
