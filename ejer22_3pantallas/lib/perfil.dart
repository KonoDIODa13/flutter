import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

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
    return Column(children: [
      const Text("PERFIL"),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                cambiarPantalla(context, "home");
              },
              child: const Text("Volver a home")),
          ElevatedButton(
              onPressed: () {
                cambiarPantalla(context, "ajustes");
              },
              child: const Text("Ir a ajustes"))
        ],
      )
    ]);
  }
}
