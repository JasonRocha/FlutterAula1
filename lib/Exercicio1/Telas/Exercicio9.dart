import 'package:flutter/material.dart';
import 'package:flutteraula1/Exercicio1/Telas/Tela_2.dart';

class Exercicio9 extends StatefulWidget {
  const Exercicio9({super.key});

  @override
  State<Exercicio9> createState() => _Exercicio9State();
}

class _Exercicio9State extends State<Exercicio9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercicio 9'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text('Essa é a primeira tela!'),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Tela_2()),
                  );
                },
                child: Text('Ir para proxima tela'))
          ],
        ),
      ),
    );
  }
}
