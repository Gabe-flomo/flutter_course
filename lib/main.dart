import 'package:flutter/material.dart';
import "dart:math";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // visual layout structure
        appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text("Message from jesus 🙏🏾")),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              count++;
            });
          },
        ),
        body: Center(
          child: Text("$count")
        ),
      ),
    );
  }

  randomColor() {
    List color = [
      Colors.red,
      Colors.blue,
      Colors.purple,
      Colors.black,
      Colors.indigo
    ];
    return color[Random().nextInt(color.length)];
  }
}
