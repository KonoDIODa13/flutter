import 'package:flutter/material.dart';
class PantallaB extends StatelessWidget {
  const PantallaB({super.key});

  cambiarPantalla(context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
         cambiarPantalla(context);
        },
        child: const Text("pulsameee para vovler"));
  }
}
