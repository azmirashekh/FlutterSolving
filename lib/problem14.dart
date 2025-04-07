import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swipeable List App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SwipeableListScreen(),
    );
  }
}

class SwipeableListScreen extends StatelessWidget {
  const SwipeableListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Swipeable List'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(index.toString()),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Item $index dismissed')),
              );
            },
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              child: const Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Icon(Icons.delete, color: Colors.white),
              ),
            ),
            secondaryBackground: Container(
              color: Colors.blue,
              alignment: Alignment.centerLeft,
              child: const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Icon(Icons.edit, color: Colors.white),
              ),
            ),
            child: ListTile(
              title: Text('Item $index'),
              subtitle: const Text('Swipe to reveal options'),
              leading: const Icon(Icons.list),
            ),
          );
        },
      ),
    );
  }
}
