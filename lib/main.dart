import 'package:flutter/material.dart';
import 'package:profanity_filte/profanity_filter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCustomForm(),
    );
  }
}
