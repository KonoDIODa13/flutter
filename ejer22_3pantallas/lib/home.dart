import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

 cambiarPantalla(context, url) {
    if (url == "home") {
      Navigator.pushNamed(context, "/");
    }
    if (url == "perfil") {
      Navigator.pushNamed(context, "/perfil");
    }
    if (url == "ajustes") {
      Navigator.pushNamed(context, "/ajustes");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      const Text("HOME"),
      Row(
         mainAxisAlignment: MainAxisAlignment.center,
        children: [
        ElevatedButton(
            onPressed: () {
              cambiarPantalla(context, "perfil");
            },
            child: const Text("Ir a perfil")),

        ElevatedButton(
            onPressed: () {
              cambiarPantalla(context, "ajustes");
            },
            child: const Text("Ir a ajustes"))
      ])
    ]);
  }
}
