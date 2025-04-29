import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen(), debugShowCheckedModeBanner: false);
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverAppBar(
            expandedHeight: 100,
            pinned: false,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Welcome!'),
              background: Image.network(
                'https://picsum.photos/600/300',
                fit: BoxFit.fill,
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(14.0),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)],
                ),
                child: Center(
                  child: Text(
                    'This is normal widget',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),

          SliverList(
            delegate: SliverChildListDelegate([
              Card(
                margin: EdgeInsets.all(10),
                child: ListTile(
                  leading: Icon(Icons.home_outlined),
                  title: Text('Home'),
                  subtitle: Text('Go to home Screen'),
                ),
              ),

              Card(
                margin: EdgeInsets.all(10), // color: Colors.amber[300],
                child: ListTile(
                  tileColor: Colors.amber[200],
                  title: Text("Setting"),
                  leading: Icon(Icons.settings_applications_rounded),
                  subtitle: Text("Go to Setting page"),
                ),
              ),

              Card(
                margin: EdgeInsets.all(10),
                child: ListTile(
                  title: Text("Profile"),
                  subtitle: Text('View your profile'),
                  leading: Icon(Icons.person_off_sharp),
                  tileColor: Colors.purple[100],
                ),
              ),

              Divider(height: 10),
            ]),
          ),

          // Divider(height: 10, color: Colors.black),
          SliverPadding(
            padding: EdgeInsets.all(15),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1,
              ),
              delegate: SliverChildListDelegate([
                GridTile(
                  footer: Text('GreenBox', textAlign: TextAlign.center),
                  header: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.black45,
                    child: Text('Header Text', textAlign: TextAlign.center),
                  ),
                  child: Container(
                    color: Colors.green,
                    child: Center(child: Text("Containers Text")),
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.redAccent,
                  child: Center(child: Text('Box 1')),
                ),

                Container(
                  color: Colors.amberAccent,
                  child: Center(child: Text('Box 2')),
                ),

                Container(color: Colors.black12),

                Container(color: Colors.blue),
                Container(color: Colors.blueAccent),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
