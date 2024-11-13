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
        body: GridView.count(
            crossAxisCount: 3,
            children: List.generate(9, (index) {
              return Center(
                child: ClipRRect(
                    // para redondearlo
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset("./lib/assets/post$index.jpg")),
              );
            })),
      ),
    );
  }
  /*
     decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
  */
}
