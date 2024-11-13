import 'package:ejer21_productos_navigator/producto.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  void _cargaProductos() {
    Producto p = new Producto(id: 1, nombre: "ordenador", stock: 10);
    Producto p1 = new Producto(id: 2, nombre: "pantalla", stock: 5);
    Producto p2 = new Producto(id: 3, nombre: "teclado", stock: 20);
  }

  @override
  Widget build(BuildContext context) {
    _cargaProductos();
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
