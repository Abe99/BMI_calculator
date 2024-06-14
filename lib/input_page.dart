import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF21223A);
const inactiveCardColor = Color(0xFF232A98);
const bottomContainerColor = Color(0xFFD20138);

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    height: 200.0,
                    decoration: BoxDecoration(
                        color: inactiveCardColor,
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    height: 200.0,
                    decoration: BoxDecoration(
                      color: inactiveCardColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 200.0,
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: inactiveCardColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    height: 200.0,
                    decoration: BoxDecoration(
                      color: inactiveCardColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    height: 200.0,
                    decoration: BoxDecoration(
                      color: inactiveCardColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: bottomContainerHeight,
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: bottomContainerColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
            )
          ],
        ));
  }
}
