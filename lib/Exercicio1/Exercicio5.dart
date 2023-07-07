// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Exercicio5 extends StatefulWidget {
  @override
  State<Exercicio5> createState() => _Exercicio5State();
}

class _Exercicio5State extends State<Exercicio5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercicio5'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              children: [
                Image(
                  image: AssetImage(
                      "lib/images/arvore-de-natal-imagem-animada-0333.gif"),
                ),
                Image(
                  image: AssetImage("lib/images/giphy.gif"),
                ),
                Image(
                    image: NetworkImage(
                        "https://static.ndmais.com.br/2023/03/papai-smurf.jpeg"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
