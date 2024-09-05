import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('CLASS ROOM APP'),
            backgroundColor: Colors.blue,
          ),
          body: const Center(
            child: Text("WELCOME TO CLASS ROOM APP"),
          )),
    );
  }
}
