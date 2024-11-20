import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});
  String text = "Home";
  int indice = 0;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void changeText(int index) {
    switch (index) {
      case 0:
        widget.text = "Home";
        break;
      case 1:
        widget.text = "Perfil";
      case 2:
        widget.text = "Ajustes";
        break;
      default:
        widget.text = "Home";
    }
  }

  void changeView(int index) {
    setState(() {
      widget.indice = index;
      changeText(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
              appBar: AppBar(
                title: Text(widget.text),
                bottom: const TabBar(tabs: [
                  Tab(icon: Icon(Icons.home), text: "Home"),
                  Tab(icon: Icon(Icons.person), text: "Perfil"),
                  Tab(icon: Icon(Icons.settings), text: "Ajustes"),
                ]),
              ),
              body: const TabBarView(children: <Widget>[
                Center(
                  child: Text("Home"),
                ),
                Center(
                  child: Text("Perfil"),
                ),
                Center(
                  child: Text("Ajustes"),
                ),
              ])
              /*body: Center(
          child: Text(widget.text),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Ajustes"),
          ],
          currentIndex: widget.indice,
          onTap: (index) {
            changeView(index);
          },
       ) ),*/
              ),
        ));
  }
}
