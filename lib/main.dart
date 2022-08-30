import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'ElevatedButton Explained';

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
            Container(
              margin: const EdgeInsets.all(20.00),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 20,
                  shadowColor: Colors.blue,
                  primary: Colors.pink,
                  fixedSize: const Size(300, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text(
                  'Elevated Button',
                  style: GoogleFonts.salsa(
                    fontSize: 25.00,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10.00,
            ),
            Container(
              margin: const EdgeInsets.all(20.00),
              color: Colors.black12,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 20,
                  shadowColor: Colors.yellow,
                  primary: Colors.purple,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: GoogleFonts.salsa(
                    fontSize: 25.00,
                    fontWeight: FontWeight.bold,
                  ),
                  //fixedSize: const Size(240, 80), primary: Colors.deepOrange),
                ),
                child: const Text('Elevated Button'),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20.00),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 20,
                  shadowColor: Colors.green,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  fixedSize: const Size(200, 70),
                  primary: Colors.deepPurple,
                  textStyle: GoogleFonts.salsa(
                    fontSize: 25.00,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: const Text('Elevated Button'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
