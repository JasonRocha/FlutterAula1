// ignore_for_file: unused_import, unused_label

import 'package:flutter/material.dart';
import 'package:flutteraula1/Animacoes/Exercicio2.dart';
import 'package:flutteraula1/Animacoes/Exercicioanimado.dart';
import 'package:flutteraula1/AnimacoesExercicio/TelaInicial.dart';
import 'package:flutteraula1/ExemploProfessor/exercicio1.dart';

import 'package:flutteraula1/Exercicio1/Exercicio1.dart';
import 'package:flutteraula1/Exercicio1/Exercicio2.dart';
import 'package:flutteraula1/Exercicio1/Exercicio3.dart';
import 'package:flutteraula1/Exercicio1/Exercicio4.dart';
import 'package:flutteraula1/Exercicio1/Exercicio5.dart';
import 'package:flutteraula1/Exercicio1/Exercicio6.dart';
import 'package:flutteraula1/Exercicio1/Exercicio7.dart';
import 'package:flutteraula1/Exercicio1/Exercicio8.dart';
import 'package:flutteraula1/Exercicio1/Telas/Exercicio10_1.dart';
import 'package:flutteraula1/Exercicio1/Telas/Exercicio11.dart';
import 'package:flutteraula1/Exercicio1/Telas/Exercicio9.dart';
import 'package:flutteraula1/Exercicio1/TesteCheckBoxListTile.dart';
import 'package:flutteraula1/Exercicio1/TesteList.dart';
import 'package:flutteraula1/Exercicio1/exemploTextField.dart';
import 'package:flutteraula1/Exercicio14/Tela/TelaProduto.dart';
import 'package:flutteraula1/Exercicio14/Widget/AppBarCustom.dart';
import 'package:flutteraula1/criando_Widgets/TesteWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TelaInicial(),
      debugShowCheckedModeBanner: false,
    );
  }
}
