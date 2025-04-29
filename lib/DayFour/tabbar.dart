import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: BottomTabScreen(),
    );
  }
}

class BottomTabScreen extends StatelessWidget {
  const BottomTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Beautiful Bottom TabBar'),
          centerTitle: true,
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text(
                '🏡 Home Screen',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                'Gallery Screen',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                'Settings Screen',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),

        bottomNavigationBar: Container(
          color: Colors.teal[400],
          child: TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.amber[100],
            unselectedLabelColor: Colors.blueGrey[100],
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.photo_album), text: 'Gallery'),
              Tab(icon: Icon(Icons.settings), text: 'Settings'),
            ],
          ),
        ),
      ),
    );
  }
}
