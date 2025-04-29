import 'package:flutter/material.dart';
import 'dart:math';

class DayTwo extends StatefulWidget {
  const DayTwo({super.key});

  @override
  State<DayTwo> createState() => _TwoState();
}

class _TwoState extends State<DayTwo> {
  Color boxColor = Colors.amber;
  double number = 50;

  List<Color> colors = [
    Colors.red,
    Colors.yellow,
    Colors.pink,
    Colors.blue,
    Colors.green,
    Colors.grey,
  ];

  void changeThing() {
    setState(() {
      boxColor = colors[Random().nextInt(colors.length)];
      number = 100 + Random().nextInt(100).toDouble();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Day Two Task'), centerTitle: true),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(16),
                alignment: Alignment.center,
                height: number,
                width: number,
                color: boxColor,
                child: Text('This is inside Container.'),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                changeThing();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: boxColor,
                elevation: 10,
              ),
              child: Text('Elevated Button'),
            ),
          ],
        ),
      ),
    );
  }
}
