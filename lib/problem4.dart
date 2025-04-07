import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StyledTextPage(),
    );
  }
}

class StyledTextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Styled Text Example')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Large Bold Red Text',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Medium Italic Blue Text',
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Small Normal Green Text',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'Row Text 1',
                  style: TextStyle(fontSize: 16, color: Colors.purple),
                ),
                SizedBox(width: 10),
                Text(
                  'Row Text 2',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
