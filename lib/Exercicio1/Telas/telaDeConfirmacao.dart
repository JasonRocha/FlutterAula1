// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class telaDeConfirmacao extends StatelessWidget {
  const telaDeConfirmacao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela de confirmação!'),
      ),
      body: Center(
        child: Column(
          children: [
            Icon(Icons.question_mark_sharp),
            Text(
              'Deseja Realmente excluir?',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text('Sim'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text('Não'),
            ),
          ],
        ),
      ),
    );
  }
}
