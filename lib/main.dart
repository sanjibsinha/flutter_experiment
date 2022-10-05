import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'ListTile Color Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        // WE can define the default brightness and colors.
        useMaterial3: true,
        brightness: Brightness.light,
        primaryColor: Colors.red[900],
        backgroundColor: Colors.blue[900],
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
            fontSize: 30.00,
            fontWeight: FontWeight.bold,
            height: 2.0, // 200% of actual height
            color: Colors.black,
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
            height: 2.0, // 200% of actual height
            fontWeight: FontWeight.bold,
            color: Colors.black,
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
  bool ignoring = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Action Chip',
          style: Theme.of(context).textTheme.headline3,
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        actions: [
          ActionChip(
            avatar: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor,
              child: const Text('C'),
            ),
            label: Text(
              'Click! Page won\'t Interact!',
              style: Theme.of(context).textTheme.headline3,
            ),
            onPressed: () {
              setState(() {
                ignoring = !ignoring;
              });
            },
          )
        ],
      ),
      body: IgnorePointer(
        ignoring: ignoring,
        child: Center(
          child: ListTileTheme(
            dense: false,
            style: ListTileStyle.list,

            /// text color  is no longer controlled by List Tile Theme
            textColor: Theme.of(context).primaryColorDark,
            child: ListView(
              children: <Widget>[
                Card(
                  child: ListTile(
                    leading: Image.network(
                      'https://cdn.pixabay.com/photo/2022/09/19/02/14/arctic-fox-7464356_960_720.jpg',
                    ),
                    title: Text(
                      'Lovely Planet',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    subtitle: Text(
                      'Where is the soure Code?',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    trailing: const Icon(Icons.more_vert),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const MyWidget(),
                        ),
                      );
                    },
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.network(
                      'https://cdn.pixabay.com/photo/2022/09/23/09/26/seagull-7474057_960_720.jpg',
                    ),
                    title: Text(
                      'Lovely Planet',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    subtitle: Text(
                      'Where is the soure Code?',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    trailing: const Icon(Icons.more_vert),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const MyWidget(),
                        ),
                      );
                    },
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.network(
                      'https://cdn.pixabay.com/photo/2014/12/12/19/45/lion-565820_960_720.jpg',
                    ),
                    title: Text(
                      'Lovely Planet',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    subtitle: Text(
                      'Where is the soure Code?',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    trailing: const Icon(Icons.more_vert),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const MyWidget(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Second Page',
          style: Theme.of(context).textTheme.headline6,
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: Container(
        margin: const EdgeInsets.all(30.00),
        child: Text(
          'Second Page',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
