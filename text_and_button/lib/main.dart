import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Column(
          children:<Widget>[
            const Text('Texto antes del botón.'),
            ElevatedButton(onPressed: () { print("Ahh me pulsaste.");} ,child: Text('Púlsame.'),),
            const Text('Texto despues del botón.')
            ] 
        ),
      ),
    );
  }
}
