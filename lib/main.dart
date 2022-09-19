import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Orientation Example';

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
      home: const MyHomePage(
        title: _title,
      ),
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
  bool image = false;
  bool light = false;

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
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            //grid with 3 and 4 columns for portrait and landscape mode respectively
            crossAxisCount: orientation == Orientation.portrait ? 1 : 3,

            // random item generator
            children: List.generate(
              Books.length,
              (index) {
                return Center(
                  child: SelectBook(
                    book: Books[index],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class Book {
  const Book({
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;
}

const List<Book> Books = <Book>[
  Book(
    title: 'Home Decor Guide',
    icon: Icons.home,
  ),
  Book(
    title: 'City Guide Map',
    icon: Icons.map,
  ),
  Book(
    title: 'Phone Directory',
    icon: Icons.phone,
  ),
  Book(
    title: 'Camera Accessories',
    icon: Icons.camera_alt,
  ),
  Book(
    title: 'Car Setting Manual',
    icon: Icons.car_rental_outlined,
  ),
];

class SelectBook extends StatelessWidget {
  const SelectBook({
    Key? key,
    required this.book,
  }) : super(key: key);
  final Book book;

  @override
  Widget build(BuildContext context) {
    const TextStyle textStyle = TextStyle(
      fontFamily: 'Lato Bold',
      fontSize: 20,
      color: Colors.white,
    );
    return Card(
      color: Colors.red,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Icon(
                book.icon,
                size: 50.0,
                color: textStyle.color,
              ),
            ),
            Text(
              book.title,
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
