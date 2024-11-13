import 'package:flutter/material.dart';

class NavegacionInferior extends StatefulWidget {
  const NavegacionInferior({super.key});

  @override
  _NavegacionInferiorState createState() => _NavegacionInferiorState();
}

class _NavegacionInferiorState extends State {
  var _currentPage = 1;
  final _pages = [
    const Text("Perfil"),
    const Text("Home"),
    const Text("Ajustes")
  ];
  final _colores = [Colors.green[200], Colors.yellow, Colors.blue[200]];
  var _color = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "BottomNavigationBar",
        home: Scaffold(
            backgroundColor: _colores[_color],
            body: Center(child: _pages.elementAt(_currentPage)),
            bottomNavigationBar: BottomNavigationBar(
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person), label: "Perfil"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings), label: "Ajustes"),
                ],
                currentIndex: _currentPage,
                fixedColor: Colors.red,
                onTap: (int inIndex) {
                  setState(() {
                    _currentPage = inIndex;
                    _color = inIndex;
                  });
                })));
  }
}
