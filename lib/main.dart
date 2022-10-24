import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  /// this is ImageFiltered Widget
  ///
  static const String _title = 'EdgeInsets Example';

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
          'EdgeInsets Example',
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

      /// build context
      ///
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 10.00,
            ),
            MaterialBanner(
              content: Text(
                'Message Text',
                style: GoogleFonts.salsa(
                  fontSize: 15.00,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[300],
                ),
              ),
              leading: const CircleAvatar(child: Icon(Icons.mail_rounded)),
              actions: [
                TextButton(
                  child: Text(
                    'READ',
                    style: GoogleFonts.salsa(
                      fontSize: 20.00,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[500],
                    ),
                  ),
                  onPressed: () {},
                ),
                ignoreText(),
                TextButton(
                  child: Text(
                    'DELETE',
                    style: GoogleFonts.salsa(
                      fontSize: 20.00,
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget ignoreText() {
  return Padding(
    padding: const EdgeInsets.only(
      left: 40,
      top: 20,
      right: 40,
      bottom: 20,
    ),
    child: TextButton(
      child: Text(
        'IGNORE',
        style: GoogleFonts.salsa(
          fontSize: 20.00,
          fontWeight: FontWeight.bold,
          color: Colors.redAccent,
        ),
      ),
      onPressed: () {},
    ),
  );
}
