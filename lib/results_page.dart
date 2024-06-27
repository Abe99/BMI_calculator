import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
   ResultsPage({required this.bmiResult,required this.resultText,required this.getInterpretation});
   final String bmiResult;
   final String resultText;
   final String getInterpretation;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Text(
                'Your Result',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Text(
                resultText.toUpperCase(),
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Text(
                bmiResult,
                style: TextStyle(fontSize: 100),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Text(
                getInterpretation,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20,),
              ),
            ),
          ),
          Expanded(child: Container(
            color: kBottomContainerColor,
            child:BottomButton(buttonTitle: 'RE-CALCULATE', onTap:
            (){
              Navigator.pop(context);
            }),
             
            
          ))
        ],
      ),
    );
  }
}
