// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
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
  late Gender selectedGender=Gender.shemale;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
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
                    },
                    child: Container(
                      child: Column(
                        children: const [
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Icon(
                                FontAwesomeIcons.mars,
                                color: Colors.amberAccent,
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
                          color: selectedGender==Gender.male? const Color.fromARGB(255, 141, 30, 215):const Color.fromARGB(255, 24, 45, 86)),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                        
                      });
                    },
                    child: Container(
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Icon(
                              FontAwesomeIcons.venus,
                              color: Colors.amberAccent,
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
                          color: selectedGender==Gender.female? const Color.fromARGB(255, 141, 30, 215):const Color.fromARGB(255, 24, 45, 86)),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              
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
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 24, 45, 86)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.lightGreen),
            height: 60,
            child: const Center(
                child: Text(
              'Calculate',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 41, 54, 59),
                  fontSize: 26),
            )),
          )
        ],
      ),
    ));
  }
}
