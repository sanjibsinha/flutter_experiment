import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'SelectableRegion Example';

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
            fontSize: 40.00,
            fontWeight: FontWeight.bold,
            height: 4.0, // 400% of actual height
          ),
          headline2: TextStyle(
            fontFamily: 'Salsa',
            fontSize: 25.00,
            fontWeight: FontWeight.bold,
            height: 2.5, // 250% of actual height
          ),
          headline3: TextStyle(
            fontFamily: 'Salsa',
            fontSize: 20.00,
            fontWeight: FontWeight.bold,
            height: 2.0, // 200% of actual height
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
  double value = 0;
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
      body: Center(
        child: SelectableRegion(
          selectionControls: materialTextSelectionControls,
          focusNode: FocusNode(),
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: Text(
                  'TextStyle Height Example with 200% height that will create a space between the upper and lower part.',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Text(
                  'TextStyle Height Example with 200% height that will create a space between the upper and lower part.',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Text(
                  'TextStyle Height Example with 200% height that will create a space between the upper and lower part.',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Text(
                  'TextStyle Height Example with 200% height that will create a space between the upper and lower part.',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
