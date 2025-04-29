import 'dart:math';

import 'package:flutter/material.dart';
import 'daytwo.dart';
import 'daythree.dart';

void main() {
  runApp(DayFourAssessment());
}

class DayFourAssessment extends StatefulWidget {
  const DayFourAssessment({super.key});

  @override
  State<DayFourAssessment> createState() => _DayFourAssessmentState();
}

class _DayFourAssessmentState extends State<DayFourAssessment> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Assessment 4'),
            centerTitle: true,
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
            // leading: Icon(Icons.home,
            bottom: TabBar(
              tabs: [
                Tab(text: 'Day 2', icon: Icon(Icons.looks_two)),
                Tab(text: 'Day 3', icon: Icon(Icons.looks_3)),
                Tab(text: 'Day 4', icon: Icon(Icons.looks_4)),
              ],
            ),
          ),
          body: TabBarView(children: [DayTwo(), DayThree(), DayFour()]),
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class DayFour extends StatefulWidget {
  DayFour({super.key});

  @override
  _DayFourState createState() => _DayFourState();
}

// ignore: unused_element
class _DayFourState extends State<DayFour> {
  List<Color> colorList = [
    Colors.red.shade100,
    Colors.green.shade100,
    Colors.blue.shade100,
    Colors.orange.shade100,
    Colors.purple.shade100,
  ];

  List<String> textItems = [
    "Hello",
    "Flutter",
    "Assignment",
    "Grid",
    "Day 4",
    "Widget",
    "Network",
    "Random",
    "Color",
    "Image",
    "Mobile",
    "App",
    "UI",
    "Beautiful",
    "Scroll",
    "Stateful",
    "Design",
    "Code",
    "User",
    "View",
  ];

  List<String> imageUrls = [
    "https://picsum.photos/200?image=10",
    "https://picsum.photos/200?image=20",
    "https://picsum.photos/200?image=30",
    "https://picsum.photos/200?image=40",
    "https://picsum.photos/200?image=50",
    "https://picsum.photos/200?image=60",
    "https://picsum.photos/200?image=70",
    "https://picsum.photos/200?image=80",
    "https://picsum.photos/200?image=90",
    "https://picsum.photos/200?image=100",
    "https://picsum.photos/200?image=110",
    "https://picsum.photos/200?image=120",
    "https://picsum.photos/200?image=130",
    "https://picsum.photos/200?image=140",
    "https://picsum.photos/200?image=150",
    "https://picsum.photos/200?image=160",
    "https://picsum.photos/200?image=170",
    "https://picsum.photos/200?image=180",
    "https://picsum.photos/200?image=190",
    "https://picsum.photos/200?image=200",
  ];

  bool _showAll = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        // height: 300,
        // width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 4)],
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    'Day Four Assignment',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),

                  Divider(color: Colors.red, thickness: 10),

                  Text(
                    'This is your subtitle.',
                    style: TextStyle(fontSize: 14),
                  ),

                  SizedBox(height: 12),

                  Text('Date: ${DateTime.now().toString().substring(0, 19)}'),

                  Divider(color: Colors.red, height: 40, thickness: 3),

                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.9,
                    ),
                    itemCount: _showAll ? 20 : 10,

                    itemBuilder: (context, index) {
                      final color = colorList[index % colorList.length];
                      final url = Random().nextBool();

                      return Container(
                        padding: EdgeInsets.all(10),
                        color: color,
                        child: Center(
                          child:
                              url
                                  ? Image.network(
                                    imageUrls[index],
                                    fit: BoxFit.cover,
                                  )
                                  : Text(
                                    textItems[index],
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _showAll = !_showAll;
                      });
                    },
                    child: Text(_showAll ? "View Less" : "View More"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
