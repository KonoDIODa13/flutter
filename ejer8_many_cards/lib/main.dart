import 'package:ejer8_many_cards/MiTarjeta.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(10)),
                MiTarjeta(
                    img: "./lib/assets/post1.jpg", texto: "esto es un texto"),
                MiTarjeta(
                    img: "./lib/assets/post2.jpg", texto: "esto es un texto"),
                MiTarjeta(
                    img: "./lib/assets/post3.jpg", texto: "esto es un texto"),
                MiTarjeta(
                    img: "./lib/assets/post4.jpg", texto: "esto es un texto"),
                MiTarjeta(
                    img: "./lib/assets/post5.jpg", texto: "esto es un texto"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
