import 'package:ejer20_navigation/segundaPantalla.dart';
import 'package:flutter/material.dart';

class PantallaA extends StatelessWidget {
  const PantallaA({super.key});

  cambiarPantalla(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const PantallaB()));
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          cambiarPantalla(context);
        },
        child: const Text("pulsameee para ir"));
  }
}
