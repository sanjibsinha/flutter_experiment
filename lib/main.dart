import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

// function to trigger app build
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Flutter RichText Example';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: appTitle),
    ); // MaterialApp
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late LongPressGestureRecognizer _longPressRecognizer;

  @override
  void initState() {
    super.initState();
    _longPressRecognizer = LongPressGestureRecognizer()
      ..onLongPress = _handlePress;
  }

  @override
  void dispose() {
    _longPressRecognizer.dispose();
    super.dispose();
  }

  void _handlePress() {
    HapticFeedback.vibrate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter RichText Example'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.comment),
            tooltip: 'Comment Icon',
            onPressed: () {},
          ), //IconButton
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ), //IconButton
        ], //<Widget>[]
        backgroundColor: Colors.red[400],
        elevation: 50.0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ), //AppBar
      body: Center(
        child: Text.rich(
          TextSpan(
            text: 'Do you ',
            style: GoogleFonts.salsa(
              color: Colors.indigo,
              fontSize: 30.00,
              fontWeight: FontWeight.bold,
            ),
            children: <InlineSpan>[
              TextSpan(
                text: 'know my',
                style: const TextStyle(
                  fontSize: 50.00,
                  color: Colors.redAccent,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.wavy,
                ),
                recognizer: _longPressRecognizer,
                mouseCursor: SystemMouseCursors.precise,
              ),
              const TextSpan(
                text: ' Name?',
              ),
            ],
          ),
        ),
      ),
      //Deawer
    );
  }
}
