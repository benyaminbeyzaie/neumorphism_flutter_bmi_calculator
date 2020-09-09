import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neumorphism_flutter_bmi_calculator/utils/card_content.dart';
import 'package:neumorphism_flutter_bmi_calculator/utils/neumorphic_card.dart';
import '../utils/constants.dart';

class ResultPage extends StatelessWidget {
  String bmi;
  String result;
  String info;

  ResultPage({this.bmi, this.info, this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey[900]),
        backgroundColor: Colors.grey[200],
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 50,
        title: Text(
          'Results',
          style: textStyle,
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: NeumorphicCard(
                  child: Column(
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            result,
                            style: textStyle,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Center(
                          child: Text(
                            bmi.toString(),
                            style: TextStyle(
                                fontSize: 80, fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Text(
                              info,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: Colors.amber,
                height: 50,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'RECALCULATE',
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
    );
  }
}
