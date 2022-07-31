import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Text Input Example',
      home: TextInputForm(),
    );
  }
}

/// Defining a custom Form widget where we will take the input
/// and print them on console
///
class TextInputForm extends StatefulWidget {
  const TextInputForm({super.key});

  @override
  State<TextInputForm> createState() => _TextInputFormState();
}

/// The role of State class is important
/// becasue this class holds data related to the Form.
///
class _TextInputFormState extends State<TextInputForm> {
  /// the text controller will retrieve the current value
  /// of the TextField and sends signal to the listeners
  ///
  bool isEdited = false;
  late TextEditingController textEditingController;
  String textOnTheScreen = 'Text On The Screen';

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController(text: textOnTheScreen);
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Any Text'),
      ),
      body: Center(
        child: isEdited
            ? Center(
                child: Container(
                  margin: const EdgeInsets.all(20.0),
                  child: TextField(
                    onSubmitted: (submittedValue) {
                      setState(() {
                        textOnTheScreen = submittedValue;
                        isEdited = false;
                      });
                    },
                    autofocus: true,
                    controller: textEditingController,
                  ),
                ),
              )
            : InkWell(
                onTap: () {
                  setState(() {
                    isEdited = true;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.all(20.0),
                  child: Text(
                    textOnTheScreen,
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
