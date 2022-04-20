// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1_bmi/enum_file.dart';

class BMI extends StatelessWidget {
  BMI(
      {Key? key,
      required this.height,
      required this.weight,
      required,
      required this.gender})
      : super(key: key);
  int height;
  int weight;
  Gender gender;
  String text = "";

  IconData icons = Icons.person;

  @override
  Widget build(BuildContext context) {
    double answer = (weight * 10000) / (height * height);
    if (answer < 18.5) {
      text = "BMI under 18.5 is underweight.";
    } else if (answer >= 18.5 && answer <= 24.9) {
      text = "BMI 18.5 to 24.9 is typically healthy weight";
    } else if (answer > 24.9 && answer < 30) {
      text = "BMI 25.0 to 29.9 may indicate overweight status.";
    } else if (answer > 30 && answer < 40) {
      text = "BMI 30.0 to 39.9 may indicate obesity.";
    } else {
      text = "You are dead";
    }

    if (gender == Gender.male) {
      icons = Icons.boy;
    } else if (gender == Gender.female) {
      icons = Icons.girl;
    }

    return Scaffold(
        backgroundColor: manthanColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                icons,
                size: 300,
                color: Colors.white,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                answer.toStringAsFixed(2),
                style: manthanStyle1(size: 40, weight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Center(
                  child: Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "BMI Suggestion : $text",
                        textAlign: TextAlign.center,
                        style: manthanStyle2(size: 20, weight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
