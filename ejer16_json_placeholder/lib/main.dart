import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  getApiData() async {
    var url =
        Uri.https('jsonplaceholder.typicode.com', 'posts/1', {'q': '{http}'});
    var response = await http.get(url);
    if (response.statusCode == 200) {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: PantallaPost());
  }
}

class PantallaPost extends StatefulWidget {
  @override
  State<PantallaPost> createState() => _statePantallaPost();
}

class _statePantallaPost extends State<PantallaPost> {
  Future<void> obtenerPosts() async {
    var url =
        Uri.https('jsonplaceholder.typicode.com', 'posts/1', {'q': '{http}'});
    var response = await http.get(url);
    if (response.statusCode == 200) {
      return jsonDecode(response.body) as Map<String, dynamic>;
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
