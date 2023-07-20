// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutteraula1/Exercicio1/Telas/telaDeConfirmacao.dart';
import 'ListaConvidados.dart';

class Exercicio12 extends StatefulWidget {
  const Exercicio12({Key? key}) : super(key: key);

  @override
  State<Exercicio12> createState() => _Exercicio12State();
}

class _Exercicio12State extends State<Exercicio12> {
  List<ListaConvidados> convidados = [
    ListaConvidados('Carlos'),
    ListaConvidados('Ana'),
  ];

  Future<bool?> _podeExcluir(BuildContext context) async {
    var result = await Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => telaDeConfirmacao(),
    ));
    if (!mounted) return null;

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercicio 12'),
      ),
      body: ListView.builder(
        itemCount: convidados.length,
        itemBuilder: (context, index) {
          final convidado = convidados[index];
          return Row(
            children: [
              Expanded(
                child: Text(
                  convidado.nome,
                  style: TextStyle(fontSize: 30),
                ),
              ),
              IconButton(
                icon: Icon(Icons.delete_rounded),
                onPressed: () {
                  _podeExcluir(context).then((value) {
                    if (value == null) return;

                    if (value) {
                      setState(() {
                        convidados.removeAt(index);
                      });
                    }

                    print("Recebi resposta do método");
                  });

                  print("Acabou de executar o botão");
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
