import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'ListTile Explained';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView(
          children: <Widget>[
            const Card(
              child: ListTile(
                title: Text('A ListTile only with Title'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.network(
                  'https://cdn.pixabay.com/photo/2015/12/13/16/02/ios-1091302_960_720.jpg',
                ),
                title: const Text('A ListTile only with Title and leading'),
              ),
            ),
            const Card(
              child: ListTile(
                title: Text('A ListTile only with Title and trailing'),
                trailing: Icon(Icons.attach_email),
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.network(
                  'https://cdn.pixabay.com/photo/2015/12/13/16/02/ios-1091302_960_720.jpg',
                ),
                title: const Text(
                    'A ListTile only with Title and leading and trailing'),
                trailing: const Icon(Icons.more_vert),
              ),
            ),
            const Card(
              child: ListTile(
                title: Text('A ListTile only with Title and dense parameter'),
                dense: true,
              ),
            ),
            const Card(
              child: ListTile(
                leading: FlutterLogo(size: 56.0),
                title: Text('A ListTile only with Title'),
                subtitle:
                    Text('A ListTile only with Subtitle, leading and trailing'),
                trailing: Icon(Icons.cake_outlined),
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.network(
                  'https://cdn.pixabay.com/photo/2015/12/13/16/02/ios-1091302_960_720.jpg',
                ),
                title: const Text('A ListTile only with three lines true.'),
                subtitle: const Text(
                    'A sufficiently long subtitle warrants three lines. A man has a house and one day a monster visits his house.'),
                trailing: const Icon(Icons.gamepad_rounded),
                isThreeLine: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
