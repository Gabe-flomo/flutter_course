import 'package:flutter/material.dart';
import "dart:math";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // visual layout structure
        appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text("Message from jesus 🙏🏾")),
        body: ListView.builder(
          itemBuilder: (_, index) {
            return Container(
              color: randomColor(),
              width: 500,
              height: 500,
              child: const Center(
                child: Text(
                  "I eat ass 🍑",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 45
                  ),
                ),
              ),
            );
          },
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
