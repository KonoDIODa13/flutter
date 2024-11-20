import "package:flutter/material.dart";
import "package:practica_examen/barra_slider.dart";
import "package:practica_examen/resultado.dart";

class Ejercicio extends StatefulWidget {
  @override
  _EjercicioState createState() => _EjercicioState();
}

class _EjercicioState extends State<Ejercicio> {
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

  void enviar(BuildContext context) {
    double resultado = peso / (altura / 100 * altura / 100);
    print(resultado.toInt());
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Resultado(resultado: resultado),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      //Padding(padding: EdgeInsets.symmetric(horizontal: 100, vertical: 50)),
      const SizedBox(height: 10),
      Stack(
        children: [
          Container(
              color: Colors.grey,
              width: 200,
              height: 200,
              child: Center(
                child: Text(
                  "${peso.toStringAsFixed(2)} Kg",
                  style: const TextStyle(fontSize: 30),
                ),
              ))
        ],
      ),
      BarraSlider(
          valor: peso, onchanged: onChangedPeso, max: 150.00, min: 40.00),
      const SizedBox(height: 10),
      Stack(
        children: [
          Container(
              color: Colors.grey,
              width: 200,
              height: 200,
              child: Center(
                child: Text(
                  "${altura.toStringAsFixed(2)} cm",
                  style: const TextStyle(fontSize: 30),
                ),
              )),
        ],
      ),
      BarraSlider(
          valor: altura, onchanged: onChangedAltura, max: 220, min: 100),
      ElevatedButton(
          onPressed: () {
            enviar(context);
          },
          child: const Text("pulsame para hacer cosas"))
    ]));
  }
}
