import 'package:flutter/material.dart';
import 'package:flutteraula1/ExemploProfessor/formularioLista.dart';
import 'package:flutteraula1/Exercicio1/Telas/Exercicio11.dart';
import 'package:flutteraula1/Exercicio1/Telas/Exercicio11_2.dart';
import 'package:flutteraula1/Exercicio1/Telas/Exercicio12.dart';
import 'package:flutteraula1/Exercicio1/Telas/telaDeConfirmacao.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => Exercicio12(),
      },
    );
  }
}
