import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const GFGapp());
}

class GFGapp extends StatelessWidget {
  const GFGapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App Example',
      //theme: ThemeData(primarySwatch: Colors.indigo),
      /// nothing happens
      ///
      darkTheme: ThemeData(primarySwatch: Colors.blueGrey),
      color: Colors.amberAccent,
      supportedLocales: {const Locale('en', ' ')},
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Example'),
        ),
        body: Center(
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.all(30.0),
            child: Text(
              'Material App Example',
              style: GoogleFonts.mavenPro(
                fontSize: 60.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
