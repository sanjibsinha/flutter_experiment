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
          height: 100.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10.00),
                width: 100.0,
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2014/08/05/10/31/waiting-410328_960_720.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.00),
                width: 100.0,
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2017/03/24/19/48/jeans-2172032_960_720.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.00),
                width: 100.0,
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2016/11/14/03/19/umbrella-1822478_960_720.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.00),
                width: 100.0,
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2015/02/07/20/58/tv-627876_960_720.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.00),
                width: 100.0,
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2015/12/13/16/02/ios-1091302_960_720.jpg',
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
