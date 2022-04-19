// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'enum_file.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Gender selectedGender = Gender.shemale;
  int sliderVal = 175;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white.withOpacity(0.92),
      appBar: AppBar(
        title: Text(
          'BMI',
          style: manthanStyle(size: 28, weight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: manthanColor,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                      HapticFeedback.selectionClick();
                    },
                    child: Container(
                      child: Column(
                        children: const [
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Icon(
                                FontAwesomeIcons.mars,
                                color: Colors.white,
                                size: 120,
                              ),
                            ),
                          ),
                          Text('Male',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: selectedGender == Gender.male
                              ? manthanColor2
                              : manthanColor),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                      HapticFeedback.selectionClick();
                    },
                    child: Container(
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Icon(
                              FontAwesomeIcons.venus,
                              color: Colors.white,
                              size: 120,
                            ),
                          ),
                          Text(
                            'Female',
                            style: TextStyle(
                                fontSize: 21,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: selectedGender == Gender.female
                              ? manthanColor2
                              : manthanColor),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: manthanStyle(size: 35, weight: FontWeight.w600),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "$sliderVal",
                            style:
                                manthanStyle(size: 60, weight: FontWeight.bold),
                          ),
                          Text(
                            "cm",
                            style:
                                manthanStyle(size: 35, weight: FontWeight.w600),
                          ),
                        ]),
                    Slider(
                      value: sliderVal.toDouble(),
                      thumbColor: Colors.white,
                      onChanged: (index) {
                        setState(() {
                          sliderVal = index.toInt();
                        });
                      },
                      min: 100,
                      max: 200,
                    )
                  ]),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 24, 45, 86)),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 24, 45, 86)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'Weight',
                          style:
                              manthanStyle(size: 25, weight: FontWeight.w600),
                        ),
                        Text(
                          "$weight kg",
                          style:
                              manthanStyle(size: 35, weight: FontWeight.w600),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(211, 255, 255, 255),
                              radius: 30,
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (weight > 0) {
                                      weight--;
                                      HapticFeedback.selectionClick();
                                    } else {
                                      HapticFeedback.vibrate();
                                    }
                                  });
                                },
                                icon: const Icon(FontAwesomeIcons.minus),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(211, 255, 255, 255),
                              radius: 30,
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                  HapticFeedback.selectionClick();
                                },
                                icon: const Icon(FontAwesomeIcons.plus),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 24, 45, 86)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'Age',
                          style:
                              manthanStyle(size: 20, weight: FontWeight.w600),
                        ),
                        Text(
                          "$age"+" yrs",
                          style:
                              manthanStyle(size: 35, weight: FontWeight.w600),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(211, 255, 255, 255),
                              radius: 30,
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (age > 0) {
                                      age--;
                                      HapticFeedback.selectionClick();
                                    } else {
                                      HapticFeedback.vibrate();
                                    }
                                  });
                                },
                                icon: const Icon(FontAwesomeIcons.minus),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(211, 255, 255, 255),
                              radius: 30,
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                  HapticFeedback.selectionClick();
                                },
                                icon: const Icon(FontAwesomeIcons.plus),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 30),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: manthanColor),
            height: 60,
            child: Center(
                child: Text(
              'Calculate',
              style: manthanStyle(size: 26, weight: FontWeight.bold),
            )),
          )
        ],
      ),
    ));
  }
}
