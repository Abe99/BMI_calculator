import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'reusable_card.dart';

class inputPage extends StatefulWidget {
  const inputPage({super.key});

  @override
  State<inputPage> createState() => _inputPageState();
}

class _inputPageState extends State<inputPage> {
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
          children: [
            Row(
              children: [
                Expanded(
                  child: ReusableCard(inactiveCardColor),
                ),
                Expanded(
                  child: ReusableCard(inactiveCardColor),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            ReusableCard(inactiveCardColor),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Expanded(
                  child: ReusableCard(inactiveCardColor),
                ),
                Expanded(
                  child: ReusableCard(inactiveCardColor),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
        ReusableCard(bottomContainerColor)
          ],
        ));
  }
}
