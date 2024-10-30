import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 5),
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)

            ),
            margin: const EdgeInsets.all(100),
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "lib/assets/gatetes.jpg",
                  width: 300,
                  height: 200,
                ),
                const Text(
                    "Como puedes ver en la imagen, son mis gatetes.\nEl grande se llama Michi y tiene 4 años (aprox), la pequeña se llama Shusi y tiene como 5 mesecitos")
              ],
            )),
      ),
    );
  }
}
