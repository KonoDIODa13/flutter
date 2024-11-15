import 'package:ejer28_bottom_navigation/navegacion_inferior.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Navegación inferior",
        home: Scaffold(
      body: NavegacionInferior(),
    ));
  }
}
