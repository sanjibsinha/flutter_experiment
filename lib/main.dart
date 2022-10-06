import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Align Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        // WE can define the default brightness and colors.
        useMaterial3: true,
        brightness: Brightness.light,
        primaryColor: Colors.red[900],
        backgroundColor: Colors.blue[900],
        cardColor: Colors.green[900],
        shadowColor: Colors.black,
        appBarTheme: const AppBarTheme(
          color: Colors.amberAccent,
        ),

        // WE can define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontFamily: 'Salsa',
            fontSize: 30.00,
            fontWeight: FontWeight.bold,
            height: 2.0, // 200% of actual height
            color: Colors.white,
          ),
          headline2: TextStyle(
            fontFamily: 'Salsa',
            fontSize: 25.00,
            fontWeight: FontWeight.bold,
            height: 1.5, // 150% of actual height
            color: Colors.purple,
          ),
          headline3: TextStyle(
            fontFamily: 'Salsa',
            fontSize: 20.00,
            height: 2.0, // 200% of actual height
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      home: const MyHomePage(title: _title),
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
  bool ignoring = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Action Chip',
          style: Theme.of(context).textTheme.headline3,
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        actions: [
          ActionChip(
            avatar: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor,
              child: const Text('C'),
            ),
            label: Text(
              'Click! Page won\'t Interact!',
              style: Theme.of(context).textTheme.headline3,
            ),
            onPressed: () {
              setState(() {
                ignoring = !ignoring;
              });
            },
          )
        ],
      ),
      body: IgnorePointer(
        ignoring: ignoring,
        child: Center(
            child: ListView(
          children: [
            Center(
              child: Container(
                height: 120.0,
                width: 120.0,
                color: Theme.of(context).cardColor,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'HI...',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                height: 120.0,
                width: 120.0,
                color: Theme.of(context).backgroundColor,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'HOW...',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                height: 120.0,
                width: 120.0,
                color: Theme.of(context).primaryColor,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'ARE U?',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Second Page',
          style: Theme.of(context).textTheme.headline6,
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: Container(
        margin: const EdgeInsets.all(30.00),
        child: Text(
          'Second Page',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
