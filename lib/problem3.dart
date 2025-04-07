import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NumberListPage(),
    );
  }
}

class NumberListPage extends StatelessWidget {
  final List<int> numbers = List.generate(20, (index) => index + 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Number List')),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item ${numbers[index]}'),
          );
        },
      ),
    );
  }
}
