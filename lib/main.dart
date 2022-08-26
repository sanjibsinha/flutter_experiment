import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Expanded';

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
        child: Row(
          children: <Widget>[
            Container(
              color: Colors.purple,
              height: 80,
              width: 100,
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.green,
                height: 500,
                width: 380,
              ),
            ),
            Container(
              color: Colors.pink,
              height: 80,
              width: 250,
            ),
          ],
        ),
      ),
    );
  }
}
