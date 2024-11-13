import 'package:ejer11_formulario/formulario.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Registro",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: RegistroForm(),
    );
  }
}