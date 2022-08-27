import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Expanded Flex Explained';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyHomePage(
        title: _title,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Container(
                    height: 100.00,
                    color: Colors.lightGreenAccent,
                    child: Text(
                      '4/9',
                      style: GoogleFonts.sacramento(
                        fontSize: 25.00,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 100.00,
                    color: Colors.pinkAccent,
                    child: Text(
                      '3/9',
                      style: GoogleFonts.sacramento(
                        fontSize: 25.00,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.purple,
                    height: 100.00,
                    child: Text(
                      '2/9',
                      style: GoogleFonts.sacramento(
                        fontSize: 25.00,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.00,
            ),
            Container(
              margin: const EdgeInsets.all(20.00),
              child: Text(
                'Total space = 4 + 3 + 2 = 9. Flex Property has divided it accordingly.',
                style: GoogleFonts.salsa(
                  fontSize: 55.00,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
