import 'package:flutter/material.dart';

class MiTarjeta extends StatelessWidget {
  const MiTarjeta({super.key, required this.img, required this.texto});
  final String img;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(
            img,
            width: 100,
            height: 100,
          ),
          Text(
            texto,
            style: const TextStyle(fontSize: 25),
          )
        ],
      ),
    );
  }
}
