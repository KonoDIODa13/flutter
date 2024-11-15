import "package:flutter/material.dart";

class Resultado extends StatefulWidget {
  final double resultado;
  const Resultado({super.key, required this.resultado});

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  volver(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(widget.resultado.toString()),
          ElevatedButton(onPressed: volver(context), child: Text("Volver"))
        ],
      ),
    );
  }
}
