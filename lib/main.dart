import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
/// this is ImageFiltered Widget
/// 
  static const String _title = 'Image Filtered Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: Theme.of(context).copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red[900],
          foregroundColor: Colors.yellow[600],
          elevation: 20.00,
          shadowColor: Colors.black,
          centerTitle: true,
          titleTextStyle: const TextStyle(
            fontFamily: 'Salsa',
            color: Colors.white,
            fontSize: 30.00,
            fontWeight: FontWeight.bold,
            height: 2.0, // 200% of actual height
          ),
        ),
        primaryColor: Colors.amber,
        primaryIconTheme:
            Theme.of(context).primaryIconTheme.copyWith(color: Colors.red),
        primaryTextTheme:
            Theme.of(context).primaryTextTheme.apply(bodyColor: Colors.green),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.amber),
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

// app bar theme one
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Image Filtered Example',
        ),
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
            const SizedBox(
              height: 10.00,
            ),
            ImageFiltered(
              imageFilter: ImageFilter.blur(
                sigmaX: 2.0,
                sigmaY: 2.0,
              ),
              child: Container(
                alignment: Alignment.center,
                width: 200.0,
                height: 200.0,
                child: const Image(image: AssetImage('images/ss.webp')),
              ),
            ),
            ImageFiltered(
              imageFilter: ImageFilter.blur(
                sigmaX: 3.0,
                sigmaY: 3.0,
              ),
              child: Container(
                alignment: Alignment.center,
                width: 200.0,
                height: 200.0,
                child: Text(
                  'Hello World',
                  style: GoogleFonts.salsa(
                    fontSize: 55.00,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
