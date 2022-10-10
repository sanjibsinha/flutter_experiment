import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'IconButton Example';

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
        backgroundColor: Colors.blue[50],
        cardColor: Colors.green[900],
        shadowColor: Colors.black,
        appBarTheme: const AppBarTheme(
          color: Colors.amberAccent,
        ),

        // WE can define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline1: TextStyle(
            fontFamily: 'Salsa',
            fontSize: 30.00,
            fontWeight: FontWeight.bold,
            height: 2.0, // 200% of actual height
            color: Colors.red[900],
          ),
          headline2: TextStyle(
            fontFamily: 'Salsa',
            fontSize: 25.00,
            fontWeight: FontWeight.bold,
            height: 1.5, // 150% of actual height
            color: Colors.purple[600],
          ),
          headline3: TextStyle(
            fontFamily: 'Salsa',
            fontSize: 20.00,
            height: 2.0, // 200% of actual height
            fontWeight: FontWeight.bold,
            color: Colors.blue[300],
          ),
        ),
      ),
      home: const MyHomePage(title: _title),
    );
  }
}

double add = 0.00;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'IconButton Example',
          style: Theme.of(context).textTheme.headline2,
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        actions: [
          IconButton(
            tooltip: 'Add to increase.',
            onPressed: () {
              setState(() {
                add += 100;
              });
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.all(30.00),
                child: Text(
                  '$add',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ),
          ],
        ),
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
      body: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(30.00),
            child: Text(
              'Back to First Page',
              style: GoogleFonts.salsa(
                fontSize: 25.00,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(30.00),
            width: 70.00,
            height: 70.00,
            color: Theme.of(context).backgroundColor,
            child: BackButton(
              onPressed: () {
                Navigator.pop(context);
              },
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
