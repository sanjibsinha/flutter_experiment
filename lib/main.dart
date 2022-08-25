import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BackButton Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const PageOne(),
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page One'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PageTwo()),
            );
          },
          child: Text(
            'Page One',
            style: GoogleFonts.salsa(
              fontStyle: FontStyle.italic,
              fontSize: 60.00,
            ),
          ),
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Page Two'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Center(
          child: Text(
            'Page Two',
            style: GoogleFonts.salsa(
              fontStyle: FontStyle.italic,
              fontSize: 60.00,
            ),
          ),
        ),
      ),
      onWillPop: () async {
        return false;
      },
    );
  }
}

Future<T?> pushPage<T>(BuildContext context, Widget page) {
  return Navigator.of(context)
      .push<T>(MaterialPageRoute(builder: (context) => page));
}
