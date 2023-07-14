// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutteraula1/Exercicio1/Telas/Exercicio10_1.dart';
import 'package:flutteraula1/Exercicio1/Telas/Exercicio10_3.dart';
import 'package:flutteraula1/Exercicio1/Telas/Tela_2.dart';

class Exercicio10_4 extends StatefulWidget {
  const Exercicio10_4({super.key});

  @override
  State<Exercicio10_4> createState() => _Exercicio10_4State();
}

class _Exercicio10_4State extends State<Exercicio10_4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercicio 10'),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Image(
                image: AssetImage("lib/images/cristiano-ronaldo-drinking.gif"),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop(
                    MaterialPageRoute(builder: (context) => Exercicio10_3()),
                  );
                },
                icon: Icon(Icons.arrow_back_ios_outlined),
              )
            ],
          ),
        ],
      ),
    );
  }
}
