import 'package:ejer20_navigation/primera_pantalla.dart';
import 'package:ejer20_navigation/segunda_pantalla.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Directionality(
      textDirection: TextDirection.ltr,
      child: MaterialApp(
        title: "navigation Basics",
        home: MainApp(),
      )));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Ejercicio basico de campos de pantalla",
        routes: {
          "/": (context) => const PantallaA(),
          "/segunda": (context) => const PantallaB(),
        });
  }
}