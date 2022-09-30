import 'package:flutter/material.dart';
import 'package:profanity_filter/profanity_filter.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

String name = 'are you a ass';
final filter = ProfanityFilter();
String result = filter.censor(name);

class _MyCustomFormState extends State<MyCustomForm> {
  final myController = TextEditingController();
  void clearText() {
    myController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profanity Filter'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: myController,
              onChanged: (value) {
                setState(() {});
              },
            ),
          ),
          Text(
            filter.censor(myController.text),
            style: TextStyle(fontSize: 19),
          )
        ],
      ),
    );
  }
}
