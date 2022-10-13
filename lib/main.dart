import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Aspect Ratio Example';

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
          'Aspect Ratio Example',
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
            Container(
              color: Colors.red[900],
              alignment: Alignment.center,
              width: 100.0,
              height: 100.0,
              child: AspectRatio(
                aspectRatio: 2.04,
                child: Container(
                  color: Colors.yellow[500],
                ),
              ),
            ),
            const SizedBox(
              height: 10.00,
            ),
            Container(
              color: Colors.black45,
              alignment: Alignment.center,
              width: 100.0,
              height: 100.0,
              child: AspectRatio(
                aspectRatio: 1.3,
                child: Container(
                  width: 100.0,
                  height: 50.0,
                  color: Colors.red[300],
                ),
              ),
            ),
            const SizedBox(
              height: 10.00,
            ),
            Container(
              color: Colors.blue[600],
              alignment: Alignment.center,
              width: 100.0,
              height: 100.0,
              child: AspectRatio(
                aspectRatio: 0.8,
                child: Container(
                  width: 100.0,
                  height: 50.0,
                  color: Colors.green[200],
                ),
              ),
            ),
          ],
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
      body: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(30.00),
            child: Text(
              'Back to First Page',
              style: GoogleFonts.salsa(
                fontSize: 25.00,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(30.00),
            width: 70.00,
            height: 70.00,
            color: Theme.of(context).backgroundColor,
            child: BackButton(
              onPressed: () {
                Navigator.pop(context);
              },
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
