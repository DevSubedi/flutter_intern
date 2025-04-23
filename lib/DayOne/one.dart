// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(DayOne());
}

class DayOne extends StatefulWidget {
  const DayOne({super.key});

  @override
  State<DayOne> createState() => _DayOneState();
}

class _DayOneState extends State<DayOne> {
  String output = 'Hello Brother';
  Color textColor = Colors.black;

  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.purple,
    Colors.orange,
  ];

  void changeTextAndColor() {
    setState(() {
      print('Button clicked.');
      output = 'Text is changed';
      textColor = colors[Random().nextInt(colors.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Task One')),
        body: Padding(
          padding: EdgeInsets.all(25),
          child: Center(
            child: Column(
              children: [
                Text(output, style: TextStyle(color: textColor, fontSize: 20)),
                SizedBox(height: 10),

                TextButton(
                  onPressed: changeTextAndColor,
                  child: Text('Click me !'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
