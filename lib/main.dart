// TODO: create a main function with runApp bmiCalculator as a stateless widget that returns a material app
// which has inputPage() as a home page

import 'package:flutter/material.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: inputPage(),
    );
  }
}

class inputPage extends StatefulWidget {
  const inputPage({super.key});

  @override
  State<inputPage> createState() => _inputPageState();
}

class _inputPageState extends State<inputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Center(
        child: Text('Main text'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('add');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
