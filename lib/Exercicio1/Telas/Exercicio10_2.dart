import 'package:flutter/material.dart';
import 'package:flutteraula1/Exercicio1/Telas/Exercicio10_1.dart';
import 'package:flutteraula1/Exercicio1/Telas/Exercicio10_3.dart';
import 'package:flutteraula1/Exercicio1/Telas/Exercicio10_4.dart';
import 'package:flutteraula1/Exercicio1/Telas/Tela_2.dart';

class Exercicio10_2 extends StatefulWidget {
  const Exercicio10_2({super.key});

  @override
  State<Exercicio10_2> createState() => _Exercicio10_2State();
}

class _Exercicio10_2State extends State<Exercicio10_2> {
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
              child: Text(
                'Pagina 2',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop(
                    MaterialPageRoute(builder: (context) => Exercicio10_1()),
                  );
                },
                icon: Icon(Icons.arrow_back_ios_outlined),
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Exercicio10_3()),
                  );
                },
                icon: Icon(Icons.arrow_forward_ios_outlined),
              )
            ],
          ),
        ],
      ),
    );
  }
}
