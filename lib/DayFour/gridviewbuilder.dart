import 'package:flutter/material.dart';

void main() {
  runApp(First());
}

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('GridView.builder Example')),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 7,
            mainAxisSpacing: 7,
            childAspectRatio: 0.5,
          ),
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.amber[100 * (index % 9)],
              child: Center(
                child: Text('Item $index', style: TextStyle(fontSize: 14)),
              ),
            );
          },
        ),
      ),
    );
  }
}
