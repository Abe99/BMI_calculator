import 'package:flutter/material.dart';
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
      // TODO: create a container for the input page
      body: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: ReusableCard(colour: Color(0xff1d1e33)),
                  ),
                  Expanded(
                    child: ReusableCard(colour: Color(0xff1d1e33)),
                  ),
                ],
              ),
              Expanded(
                child: ReusableCard(colour: Color(0xff1d1e33)),
              ),
              Row(
                children: [
                  Expanded(
                    child: ReusableCard(colour: Color(0xff1d1e33)),
                  ),
                  Expanded(
                    child: ReusableCard(colour: Color(0xff1d1e33)),
                  ),
                ],
              ),
            ],
          ),
        );
      }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    super.key,
    required this.colour,
  });

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      height: 200.0,
      decoration: BoxDecoration(
        color: Color(0xff1d1e33),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
          
      
