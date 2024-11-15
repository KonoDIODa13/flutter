import "package:flutter/material.dart";
import "package:practica_examen/barra_slider.dart";
import "package:practica_examen/resultado.dart";

class Formulario extends StatefulWidget {
  @override
  _FormularioState createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  final _formKey = GlobalKey<FormState>();
  double peso = 50;
  double altura = 180;

  void onChangedPeso(double value) {
    setState(() {
      peso = value;
    });
  }

  void onChangedAltura(double value) {
    setState(() {
      altura = value;
    });
  }

  enviar(BuildContext context) {
    double resultado = peso / (altura * altura);
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Resultado(resultado: resultado),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Center(
            child: Column(children: [
          //Padding(padding: EdgeInsets.symmetric(horizontal: 100, vertical: 50)),
          SizedBox(height: 10),
          Stack(
            children: [
              Container(
                  color: Colors.grey,
                  width: 200,
                  height: 200,
                  child: Center(
                    child: Text(
                      "${peso.roundToDouble().toString()} Kg",
                      style: TextStyle(fontSize: 30),
                    ),
                  ))
            ],
          ),
          BarraSlider(
              valor: peso, onchanged: onChangedPeso, max: 150.00, min: 40.00),
          SizedBox(height: 10),
          Stack(
            children: [
              Container(
                  color: Colors.grey,
                  width: 200,
                  height: 200,
                  child: Center(
                    child: Text(
                      "${altura.roundToDouble().toString()} cm",
                      style: TextStyle(fontSize: 30),
                    ),
                  )),
            ],
          ),
          BarraSlider(
              valor: altura, onchanged: onChangedAltura, max: 220, min: 100),
         /* ElevatedButton(
              onPressed: enviar(context),
              child: Text("pulsame para hacer cosas"))*/
        ])));
  }
}
