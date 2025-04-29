import 'package:flutter/material.dart';

class DayThree extends StatefulWidget {
  const DayThree({super.key});

  @override
  State<DayThree> createState() => _TaskOneState();
}

class _TaskOneState extends State<DayThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Listview Builder Task One')),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: scrollItems.length,

        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(14.0),
            child: Row(
              children: [
                Image.network(
                  scrollItems[index].imageUrl,
                  width: 100,
                  height: 100,
                ),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(scrollItems[index].title),
                    Text(scrollItems[index].date),
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

class ListItem {
  final String imageUrl;
  final String title;
  final String date;

  ListItem({required this.imageUrl, required this.title, required this.date});
}

List<ListItem> scrollItems = [
  ListItem(
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSV5PvHkOkYQgdcjPeOPcAZMe25njiAq_rMIA&s',
    title: 'Burger',
    date: '2034/3/34',
  ),
  ListItem(
    imageUrl:
        'https://media.istockphoto.com/id/1442417585/photo/person-getting-a-piece-of-cheesy-pepperoni-pizza.jpg?s=612x612&w=0&k=20&c=k60TjxKIOIxJpd4F4yLMVjsniB4W1BpEV4Mi_nb4uJU=',
    title: 'Pizza',
    date: 'February 23, 2023',
  ),
  ListItem(
    imageUrl:
        'https://j6e2i8c9.delivery.rocketcdn.me/wp-content/uploads/2021/05/Eggless-Black-forest-Pastry-recipe-1.jpg.webp',
    title: 'Pastry',
    date: 'March 23, 2026',
  ),
  ListItem(
    imageUrl:
        'https://www.boredpanda.com/blog/wp-content/uploads/2022/08/most-influential-people-1-62e7a22b5452f__700.jpg',
    title: 'Something',
    date: 'April 32, 2304',
  ),
  ListItem(
    imageUrl:
        'https://www.boredpanda.com/blog/wp-content/uploads/2022/08/most-influential-people-3-62e7b43c488da__700.jpg',
    title: 'Someone',
    date: 'May 33, 3243',
  ),
  ListItem(
    imageUrl:
        'https://www.boredpanda.com/blog/wp-content/uploads/2022/08/most-influential-people-2-62e7b2fa30b64__700.jpg',
    title: 'Important person',
    date: 'December 23, 2034',
  ),
  ListItem(
    imageUrl:
        'https://www.boredpanda.com/blog/wp-content/uploads/2022/08/most-influential-people-7-62e7b70ce6498__700.jpg',
    title: 'Lincoln',
    date: 'November 34, 2304',
  ),
];
