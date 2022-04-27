import 'package:flutter/material.dart';
import 'package:rbkei/home.dart';

void main() {
  runApp(MyApp(
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Shool Desk',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.grey,
        scaffoldBackgroundColor: const Color(0xFFFCFFFF),
        primaryColor: Colors.amber,
      ),
      home: Home(
       ),
    );
  }
}

