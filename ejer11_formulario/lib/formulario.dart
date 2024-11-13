import 'package:ejer11_formulario/campo_texto.dart';
import 'package:flutter/material.dart';

class RegistroForm extends StatefulWidget {
  @override
  _RegistroFormState createState() => _RegistroFormState();
}

class _RegistroFormState extends State<RegistroForm> {
  final _formKey = GlobalKey<FormState>();

  //Controladores para los TextField

  final _nombreController = TextEditingController();
  final _correoController = TextEditingController();
  final _contrasennaController = TextEditingController();

  // función para limpiar los controladores

  void _limpiarFormulario() {
    _nombreController.clear();
    _correoController.clear();
    _contrasennaController.clear();
  }

  // funciones para validar los campos

  String? _validarNombre(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, ingresa tu nombre.';
    }
    return null;
  }

  String? _validarCorreo(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, ingresa tu correo electrónico.';
    }

    //(r'^[^@]+@[^@]+\.[^@]+'
    if (!RegExp(r'^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$')
        .hasMatch(value)) {
      return 'Por favor, ingresa un correo electrónico válido.';
    }
    return null;
  }

  String? _validarContrasenna(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, ingresa tu contraseña';
    }
    if (value.length < 6) {
      return 'La contraseña debe tener al menos 6 caracteres';
    }
    return null;
  }

  void _enviarFormulario() {
    if (_formKey.currentState!.validate()) {
      // Si el formulario es válido
      final nombre = _nombreController.text;
      final correo = _correoController.text;
      final contra = _contrasennaController.text;

      print("\nNombre: $nombre\nCorreo: $correo\nContraseña: $contra");

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Registro realizado con éxito'))
        );
      _limpiarFormulario();
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Formulario de Registro.")),
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CampoTexto(
                  controlador: _nombreController,
                  etiqueta: "Nombre:",
                  validacion: _validarNombre),
              CampoTexto(
                  controlador: _correoController,
                  etiqueta: "Correo Electrónico:",
                  validacion: _validarCorreo,
                  tipoTeclado: TextInputType.emailAddress),
              CampoTexto(
                controlador: _contrasennaController,
                etiqueta: "Contraseña:",
                validacion: _validarContrasenna,
                esOculto: true,
              ),
              const SizedBox(height: 20),
              Center(
                  child: ElevatedButton(
                onPressed: _enviarFormulario,
                child: const Text('Enviar'),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
