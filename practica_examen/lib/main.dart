import 'package:flutter/material.dart';
import 'package:practica_examen/formulario.dart';

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
        body: Column(children: [
          Title(color: Colors.black, child: Text("Calculadora IMC")),
          Formulario()
        ],),
      ),
    );
  }
}
