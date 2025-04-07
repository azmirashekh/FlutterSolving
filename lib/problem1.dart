import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World App',
      home: Scaffold(
        body: Center(
          child: Text(
            'Hello World!',
            style: TextStyle(
              fontFamily: 'Lobster',
              fontSize: 32,
              color: Colors.deepPurple,
            ),
          ),
        ),
      ),
    );
  }
}
