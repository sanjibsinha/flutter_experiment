import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'ListTile Color Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        // WE can define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Colors.redAccent[600],
        backgroundColor: Colors.red[900],
        cardColor: Colors.lightGreen[200],
        shadowColor: Colors.black,
        appBarTheme: const AppBarTheme(
          color: Colors.amberAccent,
        ),

        // WE can define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontFamily: 'Salsa',
            fontSize: 80.00,
            fontWeight: FontWeight.bold,
            height: 2.0, // 200% of actual height
            color: Colors.redAccent,
          ),
          headline2: TextStyle(
            fontFamily: 'Salsa',
            fontSize: 25.00,
            fontWeight: FontWeight.bold,
            height: 1.5, // 150% of actual height
            color: Colors.purpleAccent,
          ),
          headline3: TextStyle(
            fontFamily: 'Salsa',
            fontSize: 20.00,
            fontWeight: FontWeight.bold,
            height: 2.0, // 200% of actual height
            color: Colors.deepOrange,
          ),
        ),
      ),
      home: const MyHomePage(title: _title),
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
        child: ListTileTheme(
            dense: false,
            style: ListTileStyle.list,
            textColor: Theme.of(context).primaryColorDark,
            child: ListView(
              children: <Widget>[
                Card(
                  child: ListTile(
                    leading: Image.network(
                      'https://cdn.pixabay.com/photo/2022/09/19/02/14/arctic-fox-7464356_960_720.jpg',
                    ),
                    title: const Text('Lovely Planet'),
                    subtitle: const Text('Where is the soure Code?'),
                    trailing: const Icon(Icons.more_vert),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.network(
                      'https://cdn.pixabay.com/photo/2022/09/23/09/26/seagull-7474057_960_720.jpg',
                    ),
                    title: const Text('Lovely Planet'),
                    subtitle: const Text('Where is the soure Code?'),
                    trailing: const Icon(Icons.more_vert),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.network(
                      'https://cdn.pixabay.com/photo/2014/12/12/19/45/lion-565820_960_720.jpg',
                    ),
                    title: const Text('Lovely Planet'),
                    subtitle: const Text('Where is the soure Code?'),
                    trailing: const Icon(Icons.more_vert),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
