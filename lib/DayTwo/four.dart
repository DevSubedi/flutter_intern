import 'package:flutter/material.dart';

import 'dart:math';

void main() {
  runApp(TaskFour());
}

class TaskFour extends StatefulWidget {
  const TaskFour({super.key});

  @override
  State<TaskFour> createState() => _TaskFourState();
}

class _TaskFourState extends State<TaskFour> {
  Icon data = Icon(Icons.browse_gallery_rounded);
  String currentImage =
      "https://www.boredpanda.com/blog/wp-content/uploads/2022/08/most-influential-people-1-62e7a22b5452f__700.jpg";

  List<Icon> iconList = [
    Icon(Icons.browse_gallery_sharp),
    Icon(Icons.camera_alt_rounded),
    Icon(Icons.browse_gallery_rounded),
    Icon(Icons.change_circle_rounded),
  ];

  List<String> imageUrls = [
    'https://www.boredpanda.com/blog/wp-content/uploads/2022/08/most-influential-people-1-62e7a22b5452f__700.jpg',
    'https://www.boredpanda.com/blog/wp-content/uploads/2022/08/most-influential-people-3-62e7b43c488da__700.jpg',
    'https://www.boredpanda.com/blog/wp-content/uploads/2022/08/most-influential-people-2-62e7b2fa30b64__700.jpg',
    'https://www.boredpanda.com/blog/wp-content/uploads/2022/08/most-influential-people-7-62e7b70ce6498__700.jpg',
  ];

  void changeIcon() {
    setState(() {
      data = iconList[Random().nextInt(iconList.length)];
      currentImage = imageUrls[Random().nextInt(imageUrls.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Task Four')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(currentImage, height: 500, width: 500),
              SizedBox(height: 50),
              Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: data,
                      iconSize: 100,

                      onPressed: () {
                        changeIcon();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
