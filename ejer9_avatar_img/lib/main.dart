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
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                "https://placehold.co/600x400/png"
                )
          ), CircleAvatar(
            radius: 100,
            child: Image.network(""),
          )
          ],
        ),
      ),
    );
  }
}
