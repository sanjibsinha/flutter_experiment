import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'AboutListTile Class Example';
  static const ImageProvider _image = NetworkImage(
      'https://cdn.pixabay.com/photo/2022/09/19/02/14/arctic-fox-7464356_960_720.jpg');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        // WE can define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Colors.redAccent[600],
        backgroundColor: Colors.red,
        cardColor: Colors.amber,
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
      home: const MyHomePage(title: _title, image: _image),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title, required this.image})
      : super(key: key);

  final String title;
  final ImageProvider image;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> warChildren = <Widget>[
      const SizedBox(height: 24),
      RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
                style: Theme.of(context).textTheme.headline1,
                text: 'Say NO to WAR'),
            TextSpan(style: Theme.of(context).textTheme.headline3, text: '.'),
          ],
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: Theme.of(context).textTheme.headline6,
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: SafeArea(
            child: AboutListTile(
              icon: const Icon(Icons.info),
              applicationIcon: const FlutterLogo(),
              applicationName: 'About War',
              applicationVersion: 'War is Crime',
              applicationLegalese: 'NO War, We want peace',
              aboutBoxChildren: warChildren,
            ),
          ),
        ),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Material(
            child: Ink.image(
              fit: BoxFit.fill,
              width: 400,
              height: 300,
              image: widget.image,
              child: InkWell(
                onTap: () {
                  showAboutDialog(
                    context: context,
                    applicationIcon: const FlutterLogo(),
                    applicationName: 'About War',
                    applicationVersion: 'War is Crime',
                    applicationLegalese: 'NO War, We want peace',
                    children: warChildren,
                  );
                },
                child: Align(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'NO War',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
