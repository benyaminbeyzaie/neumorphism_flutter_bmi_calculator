import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphism_flutter_bmi_calculator/logic/calculater_brain.dart';
import 'package:neumorphism_flutter_bmi_calculator/pages/result_page.dart';
import '../utils/neumorphic_card.dart';
import '../utils/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../utils/card_content.dart';
import '../utils/neumorphic_button.dart';

final Color activeCardColor = Colors.amber;
final Color inActiveCardColor = Colors.grey[200];

enum Gender { male, female }

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color maleCardColor = inActiveCardColor;
  Color femaleCardColor = inActiveCardColor;

  double _heightValue = 160;
  int _ageValue = 20;
  int _weightValue = 60;

  Gender _selectedGender = Gender.male;

  void selectGender(Gender gender) {
    _selectedGender = gender;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          elevation: 0,
          centerTitle: true,
          toolbarHeight: 50,
          title: Text(
            'BMI Calculator',
            style: textStyle,
          ),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: NeumorphicCard(
                          onTap: () {
                            setState(() {
                              selectGender(Gender.male);
                            });
                          },
                          child: CardContent(
                            icon: FontAwesomeIcons.mars,
                            text: 'MALE',
                          ),
                          color: _selectedGender == Gender.male
                              ? activeCardColor
                              : inActiveCardColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: NeumorphicCard(
                          color: _selectedGender == Gender.female
                              ? activeCardColor
                              : inActiveCardColor,
                          onTap: () {
                            setState(() {
                              selectGender(Gender.female);
                            });
                          },
                          child: CardContent(
                            icon: FontAwesomeIcons.venus,
                            text: 'FEMALE',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: NeumorphicCard(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Text(
                                  'HEIGHT:',
                                  style: textStyle,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.baseline,
                                  textBaseline: TextBaseline.alphabetic,
                                  children: [
                                    Text(
                                      _heightValue.round().toString(),
                                      style: numberTextStyle,
                                    ),
                                    Text(
                                      'CM',
                                      style: textStyle,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                NeumorphicSlider(
                                    height: 10,
                                    value: _heightValue,
                                    style: SliderStyle(
                                        variant: Colors.amber[200],
                                        depth: -10,
                                        accent: Colors.amber),
                                    min: 70,
                                    max: 210,
                                    onChanged: (double value) {
                                      setState(() {
                                        _heightValue = value;
                                      });
                                    }),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: NeumorphicCard(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'WEIGHT:',
                                style: textStyle,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    _weightValue.round().toString(),
                                    style: numberTextStyle,
                                  ),
                                  Text(
                                    'Kg',
                                    style: textStyle,
                                  )
                                ],
                              ),
                              SizedBox(width: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BenNeumorphicButton(
                                    icon: FontAwesomeIcons.plus,
                                    onTap: () {
                                      setState(() {
                                        _weightValue++;
                                      });
                                    },
                                  ),
                                  BenNeumorphicButton(
                                    icon: FontAwesomeIcons.minus,
                                    onTap: () {
                                      setState(() {
                                        _weightValue--;
                                      });
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: NeumorphicCard(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'AGE:',
                                style: textStyle,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    _ageValue.round().toString(),
                                    style: numberTextStyle,
                                  ),
                                ],
                              ),
                              SizedBox(width: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BenNeumorphicButton(
                                    icon: FontAwesomeIcons.plus,
                                    onTap: () {
                                      setState(() {
                                        _ageValue++;
                                      });
                                    },
                                  ),
                                  BenNeumorphicButton(
                                    icon: FontAwesomeIcons.minus,
                                    onTap: () {
                                      setState(() {
                                        _ageValue--;
                                      });
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  CalculatorBrain calculatorBrain = CalculatorBrain(
                      height: _heightValue.round(), weight: _weightValue);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(
                        bmi: calculatorBrain.calculateBMI(),
                        info: calculatorBrain.getInterpretation(),
                        result: calculatorBrain.getResult(),
                      ),
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  color: Colors.amber,
                  child: Center(
                    child: Text(
                      'CALCULATE',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
