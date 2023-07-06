import 'package:flutter/material.dart';
import 'package:flutteraula1/Exercicio1/Exercicio1.dart';
import 'package:flutteraula1/Exercicio1/Exercicio2.dart';
import 'package:flutteraula1/Exercicio1/Exercicio3.dart';
import 'package:flutteraula1/Screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Exercicio3(),
    );
  }
}
