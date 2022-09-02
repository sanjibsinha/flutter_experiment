import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'OutlinedButton Explained';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        // WE can define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Colors.redAccent[600],
        appBarTheme: const AppBarTheme(
          color: Colors.pinkAccent,
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
          children: [
            Container(
              margin: const EdgeInsets.all(20.00),
              child: Text(
                'OutlinedButton Examples',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20.00),
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  elevation: 20,
                  shadowColor: Colors.blue,
                  primary: Colors.pink,
                  fixedSize: const Size(300, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text(
                  'Outlined Button',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ),
            const SizedBox(
              height: 10.00,
            ),
            Container(
              margin: const EdgeInsets.all(20.00),
              color: Colors.black12,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  elevation: 20,
                  shadowColor: Colors.yellow,
                  primary: Colors.purple,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: Theme.of(context).textTheme.headline6,
                  //fixedSize: const Size(240, 80), primary: Colors.deepOrange),
                ),
                child: const Text('Outlined Button'),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20.00),
              child: Text(
                'We have tried to apply the Global theme on OutlinedButton Examples.',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
