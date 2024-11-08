import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  validaCampos() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CampoDeTexto(
                texto: "Escriba usted el nombre:",
                hintTexto: "nombre",
                obscureTexto: false),
            const CampoDeTexto(
                texto: "Escriba usted el correo electrónico:",
                hintTexto: "correo",
                obscureTexto: false),
            const CampoDeTexto(
                texto: "Escriba usted la contraseña:",
                hintTexto: "contraseña",
                obscureTexto: true),
            ElevatedButton(
                onPressed: () {
                  validaCampos();
                },
                child: const Text("enviar"))
          ],
        ),
      ),
    ));
  }
}

class CampoDeTexto extends StatefulWidget {
  const CampoDeTexto({
    super.key,
    required this.texto,
    required this.hintTexto,
    required this.obscureTexto,
  });
  final String texto;
  final String hintTexto;
  final bool obscureTexto;



  Widget build(BuildContext context) {
    return Column(children: [
      Text(texto),
      TextField(
        decoration: InputDecoration(hintText: hintTexto),
        obscureText: obscureTexto,
        textAlign: TextAlign.center,
      )
    ]);
  }

@override
  State<CampoDeTexto> createState() => _stateCampoDeTexto(); 
    
}

class _stateCampoDeTexto extends State<CampoDeTexto>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
  

  

  
  /*
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(texto),
      TextField(
        decoration: InputDecoration(hintText: hintTexto),
        obscureText: obscureTexto,
        textAlign: TextAlign.center,
      )
    ]);
  }*/
}
