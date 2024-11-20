import "package:flutter/material.dart";

class Resultado extends StatefulWidget {
  double resultado;
  Resultado({super.key, required this.resultado});

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  volver(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(widget.resultado.toStringAsFixed(2)),
            ElevatedButton(
                onPressed: () {
                  volver(context);
                },
                child: const Text("Volver"))
          ],
        ),
      ),
    );
  }
}
