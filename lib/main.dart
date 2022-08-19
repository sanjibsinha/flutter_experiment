import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Horizontal List Examples';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
          backgroundColor: Colors.purpleAccent,
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 20.0),
          height: 550.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10.00),
                height: 480.0,
                width: 240.0,
                child: Image.network(
                  '',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.00),
                height: 480.0,
                width: 240.0,
                child: Image.network(
                  '',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.00),
                height: 480.0,
                width: 240.0,
                child: Image.network(
                  '',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.00),
                height: 480.0,
                width: 240.0,
                child: Image.network(
                  '',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.00),
                height: 480.0,
                width: 240.0,
                child: Image.network(
                  '',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
