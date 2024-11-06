import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: GridView.count(
          crossAxisCount: 3,
          children: [
            Container(
              child: Image.asset(""),
            )
          ],
         
         
        ),
      ),
    );
  }
}
