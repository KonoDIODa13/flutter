import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello World - Windows"),
        ),
        body:  const Column(children: <Widget> [
          Text("Hello wolrd"),
          Image(
              image: NetworkImage(
                  "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg")),
        ],
        ),
      ),
    );
  }
}
