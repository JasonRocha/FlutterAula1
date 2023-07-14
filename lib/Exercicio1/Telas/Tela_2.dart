import 'package:flutter/material.dart';
import 'package:flutteraula1/Exercicio1/Telas/Exercicio9.dart';

class Tela_2 extends StatefulWidget {
  const Tela_2({super.key});

  @override
  State<Tela_2> createState() => _Tela_2State();
}

class _Tela_2State extends State<Tela_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela 2'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text('Essa é a segunda tela!'),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Exercicio9()),
                  );
                },
                child: Text('Ir para a primeira tela'))
          ],
        ),
      ),
    );
  }
}
