import 'package:flutter/material.dart';

void main() {
  runApp(GridViewCount());
}

class GridViewCount extends StatelessWidget {
  const GridViewCount({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 7,
          padding: EdgeInsets.all(7),
          children: List.generate(50, (index) {
            return Container(
              color: Colors.purple[100 * (index % 9)],
              child: Center(
                child: Text('Item $index', style: TextStyle(fontSize: 17)),
              ),
            );
          }),
        ),
      ),
    );
  }
}
