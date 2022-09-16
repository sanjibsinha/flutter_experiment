

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Text Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        // WE can define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Colors.redAccent[600],
        backgroundColor: Colors.black26,
        cardColor: Colors.amber,
        shadowColor: Colors.black,
        appBarTheme: const AppBarTheme(
          color: Colors.amberAccent,
        ),

        // WE can define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontFamily: 'Salsa',
            fontSize: 80.00,
            fontWeight: FontWeight.bold,
            height: 2.0, // 200% of actual height
            color: Colors.redAccent,
          ),
          headline2: TextStyle(
            fontFamily: 'Salsa',
            fontSize: 25.00,
            fontWeight: FontWeight.bold,
            height: 1.5, // 150% of actual height
            color: Colors.purpleAccent,
          ),
          headline3: TextStyle(
            fontFamily: 'Salsa',
            fontSize: 20.00,
            fontWeight: FontWeight.bold,
            height: 2.0, // 200% of actual height
            color: Colors.deepOrange,
          ),
        ),
      ),
      home: const MyHomePage(
        title: _title,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool image = false;
  bool light = false;

  // let's create a UI based on Material Theme
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: Theme.of(context).textTheme.headline6,
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: Container(
        alignment: FractionalOffset.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.traffic_outlined,
                    color: light ? Colors.red : Colors.green,
                    size: 60,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: image
                        ? Container(
                            padding: const EdgeInsets.all(5.00),
                            width: 300,
                            height: 250,
                            child: Image.network(
                                'https://cdn.pixabay.com/photo/2019/03/19/16/52/fantasies-4066196_960_720.jpg'),
                          )
                        : Container(
                            padding: const EdgeInsets.all(5.00),
                            width: 300,
                            height: 250,
                            child: Image.network(
                                'https://cdn.pixabay.com/photo/2014/09/19/20/48/cab-453028_960_720.jpg'),
                          )),
              ],
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  // Toggle light and image when tapped.
                  light = !light;
                  image = !image;
                });
              },
              child: Container(
                color: Colors.red,
                padding: const EdgeInsets.all(8),
                // You can walk when traffic light is red
                child: Text(light ? 'STOP' : 'WALK'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
