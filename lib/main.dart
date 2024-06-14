// TODO: create a main function with runApp bmiCalculator as a stateless widget that returns a material app
// which has inputPage() as a home page

import 'package:flutter/material.dart';
import 'input_page.dart';

void main(){
  runApp(BMICalculator());
}
class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.dark(),
      home: inputPage(),
      debugShowCheckedModeBanner: true,
    );
  }
}



// TODO: create a new class called inputPage in input_page.dart
