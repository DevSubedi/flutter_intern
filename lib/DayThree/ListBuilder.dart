import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyList()));
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Snacks List")),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: foodList.length,
        itemBuilder: (context, index) {
          final item = foodList[index];
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.network(
                  item.imageUrl,
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(item.date, style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class FoodItem {
  final String imageUrl;
  final String title;
  final String date;

  FoodItem({required this.imageUrl, required this.title, required this.date});
}

List<FoodItem> foodList = [
  FoodItem(
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSV5PvHkOkYQgdcjPeOPcAZMe25njiAq_rMIA&s',
    title: 'Burger',
    date: 'April 25, 2025',
  ),

  FoodItem(
    imageUrl:
        'https://media.istockphoto.com/id/1442417585/photo/person-getting-a-piece-of-cheesy-pepperoni-pizza.jpg?s=612x612&w=0&k=20&c=k60TjxKIOIxJpd4F4yLMVjsniB4W1BpEV4Mi_nb4uJU=',
    title: 'Pizza',
    date: 'February 23, 2023',
  ),

  FoodItem(
    imageUrl:
        'https://j6e2i8c9.delivery.rocketcdn.me/wp-content/uploads/2021/05/Eggless-Black-forest-Pastry-recipe-1.jpg.webp',
    title: 'Pastry',
    date: 'March 23, 2026',
  ),
];
