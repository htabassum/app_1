import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;
  int increments = 0;
  int decrements = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('App_1')),
        ),
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Row(children: [
          FloatingActionButton(
            child: Icon(
              Icons.arrow_upward,
              color: Colors.black,
            ),
            backgroundColor: Colors.purpleAccent,
            onPressed: () {
              counter++;
              increments++;
              setState(() {});
            },
          ),
          FloatingActionButton(
            child: Icon(
              Icons.arrow_downward,
              color: Colors.black,
            ),
            backgroundColor: Colors.purpleAccent,
            //child: Icon(Icons.add),
            onPressed: () {
              counter--;
              decrements++;
              setState(() {});
            },
          ),
          FloatingActionButton(
            child: Icon(
              Icons.refresh,
              color: Colors.black,
            ),
            backgroundColor: Colors.purpleAccent,
            //child: Icon(Icons.add),
            onPressed: () {
              counter = 0;
              decrements = 0;
              increments = 0;
              setState(() {});
            },
          ),
        ]),
        //floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'No. of increments clicks: $increments',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w100),
              ),
              Text(
                'No. of decrements clicks: $decrements',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w100),
              ),
              Text(
                'Net Result: $counter',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}
