
import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'constants.dart';
import 'bottom_button.dart';


enum Gender {
  male,
  female,
}

class inputPage extends StatefulWidget {
  const inputPage({super.key});

  @override
  State<inputPage> createState() => _inputPageState();
}

class _inputPageState extends State<inputPage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 3;

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
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      icon: Ionicons.male_outline,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      icon: Ionicons.female_outline,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            ReusableCard(
              colour: kInactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      thumbColor: Colors.red,
                      overlayColor: Colors.orange,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Text(weight.toString(), style: kNumberTextStyle),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: () {
                                print('add pressed');
                                setState(() {
                                  if(weight<200){
                                    weight++;
                                  }else{weight = 200;
                                  };
                                });
                              },
                                child: Icon(
                                    Ionicons.add,
                                    color: Colors.white,),
                              ),
                              SizedBox(width: 50.0,),
                              FloatingActionButton(onPressed: () {
                                setState(() {
                                  if(weight > 0){
                                    weight--;
                                  }else{
                                    weight = 0;
                                  }
                                });
                              },
                                child: Icon(
                                    Ionicons.remove,
                                    color: Colors.white,),
                              )
                            ],
                          )
                        ],
                      ),
                      colour: kInactiveCardColor),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE',style: kLabelTextStyle,),
                        Text(age.toString(),style: kNumberTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(onPressed: () {
                              setState(() {
                              if(age < 110){
                                age++;
                              }else{
                                age = 110;
                              }
                              });
                              
                            },
                              child: Icon(Ionicons.add,color: Colors.white,),

                            ),
                            SizedBox(width: 50.0,),
                            FloatingActionButton(onPressed: () {
                              setState(() {
                                if(age>0){
                                  age--;
                                }else{age = 0;
                                }
                              });
                            },
                            child: Icon(Ionicons.remove,color: Colors.white),)
                          ],
                        )
                      ],
                    ),
                    colour: kInactiveCardColor),
                    
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 15.0),
              width: double.infinity,
              height: kBtmContainerHeight,
              child: BottomButton(buttonTitle: 'CALCULATE',onTap: () {
     Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage()));
      },),
            )
          ],
        ));
  }
}

