import 'package:flutter/material.dart';

// Widget personalizado para un campo de texto con validación
class CampoTexto extends StatefulWidget {
  final TextEditingController controlador;
  final String etiqueta;
  final String? Function(String?) validacion;
  final bool esOculto;
  final TextInputType tipoTeclado;

  const CampoTexto({
    super.key,
    required this.controlador,
    required this.etiqueta,
    required this.validacion,
    this.esOculto = false,
    this.tipoTeclado = TextInputType.text,
  });

  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextFormField(
        controller: widget.controlador,
        decoration: InputDecoration(labelText: widget.etiqueta),
        obscureText: widget.esOculto,
        keyboardType: widget.tipoTeclado,
        validator: widget.validacion,
      ),
    );
  }
}