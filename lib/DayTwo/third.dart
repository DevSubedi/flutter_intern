import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(TaskThree());
}

class TaskThree extends StatefulWidget {
  const TaskThree({super.key});

  @override
  State<TaskThree> createState() => _DayThreeState();
}

class _DayThreeState extends State<TaskThree> {
  int count = 0;
  int substract = 0;
  Color buttonColor = Colors.amber;

  List<Color> colors = [
    Colors.red,
    Colors.yellow,
    Colors.black,
    Colors.amber,
    Colors.green,
  ];

  void addCounter() {
    setState(() {
      count++;
      buttonColor = colors[Random().nextInt(colors.length)];
    });
  }

  void substractCounter() {
    setState(() {
      count--;
      buttonColor = colors[Random().nextInt(colors.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Day Three Task'), centerTitle: true),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,

            children: [
              Text('$count ', style: TextStyle(fontSize: 34)),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 60,
                    width: 120,
                    child: FloatingActionButton(
                      onPressed: () {
                        addCounter();
                      },
                      elevation: 20,

                      backgroundColor: buttonColor,
                      foregroundColor: Colors.black,

                      child: Text('Add +'),
                    ),
                  ),
                  SizedBox(width: 50),

                  SizedBox(
                    height: 60,
                    width: 120,

                    child: FloatingActionButton(
                      onPressed: () {
                        substractCounter();
                      },
                      foregroundColor: Colors.black,
                      backgroundColor: buttonColor,
                      child: Text('Substract -'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
