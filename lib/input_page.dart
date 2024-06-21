import 'package:bmi_calculator/icon_content.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

const btmContainerHeight = 160.0;

class inputPage extends StatefulWidget {
  const inputPage({super.key});


  @override
  State<inputPage> createState() => _inputPageState();
}

class _inputPageState extends State<inputPage> {
  
  Color maleCardColor = inactiveCardColor;

  Color femaleCardColor = inactiveCardColor;
 void updateColor(int gender) {
  if(gender == 1) {
    if(maleCardColor == inactiveCardColor) {
      maleCardColor = activeCardColor;
      femaleCardColor = inactiveCardColor;
    }else {
      maleCardColor = inactiveCardColor;
      femaleCardColor = activeCardColor;
    }

  }

  if(gender == 2) {
    if(femaleCardColor == inactiveCardColor) {
      femaleCardColor = activeCardColor;
      maleCardColor = inactiveCardColor;
    }else {femaleCardColor = inactiveCardColor;
    maleCardColor = activeCardColor;
    }

  }}
 
    
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 7, 4, 39),
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ReusableCard(
                      colour: maleCardColor,
                      cardChild: IconContent(
                        icon: Ionicons.male_outline,
                        label: 'Male',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ReusableCard(
                      colour: femaleCardColor,
                      cardChild: IconContent(
                        icon: Ionicons.female_outline,
                        label: 'Female',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            ReusableCard(colour: inactiveCardColor),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: inactiveCardColor),
                ),
                Expanded(
                  child: ReusableCard(colour: inactiveCardColor),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 15.0),
              width: double.infinity,
              height: btmContainerHeight,
            )
          ],
        ));
  }
}
