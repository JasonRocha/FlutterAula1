// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutteraula1/Exercicio1/Telas/Exercicio11.dart';

class Exercicio11_2 extends StatelessWidget {
  final Exercici11Model usuario;

  Exercicio11_2({required this.usuario});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agradecimento'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${usuario.nome}', style: TextStyle(fontSize: 35)),
            Text(
              'Muito obrigado por se cadastrar',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16.0),
            Text(
                'Um e-mail de confirmação de cadastro foi enviado para o e-mail: ${usuario.email}',
                style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
