import 'package:bmi/Reusebles.dart';
import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmi, @required this.resultText, @required this.interpretation});
  final String bmi;
  final String resultText;
  final interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATER'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              
              child: Text('YOUR RESULTS',
                  style: kValuesTextStyle.copyWith(fontSize: 30)),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(8),
                color: kActiveContainer,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: Center(
                          child: Text(
                    resultText,
                    style: kLabeltextStyle.copyWith(
                        color: Color(0XFF24D876), fontWeight: FontWeight.bold),
                  ))),
                  Expanded(
                    child: Center(
                      child: Text(
                        bmi,
                        style: kValuesTextStyle.copyWith(fontSize: 100),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Center(
                          child: Text(
                    interpretation,
                    style: kMessageTextStyle,
                    textAlign: TextAlign.center,
                  ))),
                ],
              ),
            ),
          ),
          ReusebleButton(label: 'RE-CALCULATE',onTap: (){
            Navigator.pop(context);
          },),
        ],
      ),
    );
  }
}

