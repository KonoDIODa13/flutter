import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Soy un titulo"),
        ),
        body: Column(
          children: <Widget>[
            const Text('FloatingActionButton'),
            FloatingActionButton(
              onPressed: () {},
              child: const Text("Soy un botón"),
            )
          ],
        ),
      ),
    );
  }
}
