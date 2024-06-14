import 'package:flutter/material.dart';
const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF21223A);
const inactiveCardColor = Color(0xFF232A98);
const bottomContainerColor = Color(0xFFD20138);
class ReusableCard extends StatelessWidget {
  ReusableCard(this.colour) ;

  
 Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all( 15.0),
      height: 200.0,
      decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0)),
    );
  }
}