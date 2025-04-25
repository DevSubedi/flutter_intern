import 'package:flutter/material.dart';

void main() {
  runApp(TaskTwo());
}

class TaskTwo extends StatefulWidget {
  const TaskTwo({super.key});

  @override
  State<TaskTwo> createState() => _TaskTwoState();
}

class _TaskTwoState extends State<TaskTwo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [Icon(Icons.alarm)],
          leading: Icon(Icons.house_outlined),
          title: Text('Task Two (Order Menu)'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    ListItem(
                      'https://assets.epicurious.com/photos/5c745a108918ee7ab68daf79/1:1/w_2560%2Cc_limit/Smashburger-recipe-120219.jpg',
                      'Burger',
                      'Wanna grab a bite',
                      'Purchase',
                    ),
                    ListItem(
                      'https://hips.hearstapps.com/hmg-prod/images/classic-cheese-pizza-recipe-2-64429a0cb408b.jpg?crop=0.8888888888888888xw:1xh;0,0&resize=980:*',
                      'Pizza',
                      'Wanna take a slice',
                      'Buy it',
                    ),
                    ListItem(
                      'https://www.southernliving.com/thmb/TW2iJ6-7F-BAy35Q_EYW5wnIHGI=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Ham_Sandwich_011-1-49227336bc074513aaf8fdbde440eafe.jpg',
                      'Sandwich',
                      'Why not today',
                      'Get it',
                    ),
                    ListItem(
                      'https://www.cookwithmanali.com/wp-content/uploads/2024/01/Veg-Chowmein-1014x1536.jpg',
                      'Chowmein',
                      'Just grab your fork',
                      'Order it',
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

Widget ListItem(String url, String title, String desc, String buttonText) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(url, height: 200, width: 200),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 29),
          ),
          SizedBox(height: 10),
          Text(desc),
          SizedBox(height: 10),

          Divider(
            height: 20,
            indent: 20,
            endIndent: 20,
            thickness: 5,
            color: Colors.red,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(minimumSize: Size(200, 50)),
            onPressed: () {},
            child: Text(buttonText, style: TextStyle(fontSize: 23)),
          ),

          Divider(color: Colors.red[200]),
        ],
      ),
    ),
  );
}
