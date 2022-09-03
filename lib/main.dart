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
        appBarTheme: const AppBarTheme(
          color: Colors.amberAccent,
        ),

        // WE can define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline1: GoogleFonts.salsa(
            fontSize: 45.00,
            fontWeight: FontWeight.bold,
          ),
          headline6: GoogleFonts.cairo(
            fontSize: 25.00,
            fontWeight: FontWeight.bold,
          ),
          bodyText2: GoogleFonts.comicNeue(
            fontSize: 17.00,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      home: const MyHomePage(
        title: _title,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  // let's change

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              backgroundColor: Theme.of(context).backgroundColor,
              valueColor: AlwaysStoppedAnimation(
                Theme.of(context).appBarTheme.backgroundColor,
              ),
              strokeWidth: 10,
            ),
            const SizedBox(
              height: 15,
            ),
            LinearProgressIndicator(
              backgroundColor: Theme.of(context).backgroundColor,
              valueColor: AlwaysStoppedAnimation(
                Theme.of(context).appBarTheme.backgroundColor,
              ),
              minHeight: 20,
            )
          ],
        ),
      ),
    );
  }
}
