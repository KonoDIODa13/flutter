import 'package:flutter/material.dart';
import 'package:practica_examen/ejercicio.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculadora IMC",
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Title(color: Colors.white, child: const Text("Calculadora IMC")),
            Ejercicio()
          ],
        ),
      ),
    );
  }
}
