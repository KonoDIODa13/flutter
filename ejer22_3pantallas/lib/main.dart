import 'package:ejer22_3pantallas/ajustes.dart';
import 'package:ejer22_3pantallas/home.dart';
import 'package:ejer22_3pantallas/perfil.dart';
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
    return MaterialApp(title: "Ejercicio Basico de rutas", routes: {
      "/": (context) => const Home(),
      "/perfil": (context) => const Perfil(),
      "/ajustes": (context) => const Ajustes(),
    });
  }
}
