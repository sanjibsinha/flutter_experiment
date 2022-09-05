import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Progress Indicator Explained';

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
        textTheme: TextTheme(
          headline1: GoogleFonts.salsa(
            fontSize: 25.00,
            fontWeight: FontWeight.bold,
          ),
          headline2: GoogleFonts.cairo(
            fontSize: 25.00,
            fontWeight: FontWeight.bold,
          ),
          bodyText2: GoogleFonts.comicNeue(
            fontSize: 25.00,
            fontWeight: FontWeight.bold,
            color: Colors.amber,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Text(
                'Indeterminate Progress Indicator',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: CircularProgressIndicator(
                backgroundColor: Theme.of(context).backgroundColor,
                color: Theme.of(context).cardColor,
                strokeWidth: 15,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Text(
                'Determinate Progress Indicator',
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: CircularProgressIndicator(
                backgroundColor: Theme.of(context).backgroundColor,
                color: Theme.of(context).cardColor,
                strokeWidth: 15,
                value: value,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 20.00,
                  primary: Theme.of(context).backgroundColor,
                  shadowColor: Theme.of(context).shadowColor,
                ),
                onPressed: () {
                  value = 0;
                  Timer.periodic(const Duration(seconds: 2), (Timer timer) {
                    setState(() {
                      if (value == 2) {
                        timer.cancel();
                      } else {
                        value = value + 0.1;
                      }
                    });
                  });
                },
                child: Text(
                  "Download File",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
