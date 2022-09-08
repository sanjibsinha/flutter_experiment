import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Staggered GridView';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        // WE can define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Colors.redAccent[600],
        backgroundColor: Colors.black26,
        cardColor: Colors.amber,
        shadowColor: Colors.black,
        appBarTheme: const AppBarTheme(
          color: Colors.amberAccent,
        ),

        // WE can define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline1: const TextStyle(
            fontFamily: 'Salsa',
            fontSize: 35.00,
            fontWeight: FontWeight.bold,
          ),
          headline2: GoogleFonts.cairo(
            fontSize: 25.00,
            fontWeight: FontWeight.bold,
          ),
          bodyText2: GoogleFonts.comicNeue(
            fontSize: 25.00,
            fontWeight: FontWeight.bold,
            color: Colors.amber,
          ),
        ),
      ),
      home: const MyHomePage(
        title: _title,
      ),
    );
  }
}

//List of Cards with color and icon
List<Widget> _listTile = <Widget>[
  const FlutterLogoTile(
    backColor: Colors.deepPurpleAccent,
  ),
  const FlutterLogoTile(
    backColor: Colors.yellowAccent,
  ),
  const FlutterLogoTile(
    backColor: Colors.blue,
  ),
  const FlutterLogoTile(
    backColor: Colors.deepOrange,
  ),
  const FlutterLogoTile(
    backColor: Colors.blueGrey,
  ),
  const FlutterLogoTile(
    backColor: Colors.red,
  ),
  const FlutterLogoTile(
    backColor: Colors.orange,
  ),
  const FlutterLogoTile(
    backColor: Colors.white,
  ),
  const FlutterLogoTile(
    backColor: Colors.pink,
  ),
  const FlutterLogoTile(
    backColor: Colors.green,
  ),
  const FlutterLogoTile(
    backColor: Colors.purple,
  ),
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double value = 0;
  // let's create a UI based on Material Theme
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
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Text(
                'Staggered GridView Example',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: StaggeredGrid.count(
                crossAxisCount: 4,
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
                //StaggeredGridTiles: _cardTile,
                children: _listTile,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 20.00,
                  primary: Theme.of(context).backgroundColor,
                  shadowColor: Theme.of(context).shadowColor,
                ),
                onPressed: () {},
                child: Text(
                  'Send Data',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FlutterLogoTile extends StatelessWidget {
  final Color backColor;

  const FlutterLogoTile({
    Key? key,
    required this.backColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backColor,
      child: const FlutterLogo(
        size: 300,
        textColor: Colors.blue,
        style: FlutterLogoStyle.stacked,
      ), //Flut
    );
  }
}
