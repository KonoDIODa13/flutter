import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Esto es un titulo",
          ),
        ),
        body: const stateExample(),
      ),
    );
  }
}

// ignore: camel_case_types
class stateExample extends StatefulWidget {
  const stateExample({Key? key}) : super(key: key);

  @override
  State<stateExample> createState() => _stateExampleState();
}

// ignore: camel_case_types
class _stateExampleState extends State<stateExample> {
  int contador = 0;

  void sumaContador() {
    setState(() {
      contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print(" Build method called");
    return Column(children: <Widget>[
      ElevatedButton(
        onPressed: sumaContador,
        child: const Text(
          'suma contador',
        ),
      ),
      Text(contador.toString()),
    ]);
  }
}
