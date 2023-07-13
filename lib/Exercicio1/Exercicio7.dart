// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Exercicio7 extends StatefulWidget {
  @override
  State<Exercicio7> createState() => _Exercicio7State();
}

class _Exercicio7State extends State<Exercicio7> {
  TextEditingController adicionar = TextEditingController();
  final List<String> listaDeConvidados = [];

  String convidadoSelecionado = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercicio 7'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: listaDeConvidados.length,
              itemBuilder: (context, index) {
                final guest = listaDeConvidados[index];
                return TextButton(
                  onPressed: () {
                    setState(
                      () {
                        print('Apertou o convidado $guest');
                        convidadoSelecionado = guest;
                      },
                    );
                    // Lógica a ser executada ao pressionar o botão
                  },
                  child: Row(
                    children: [
                      Icon(Icons.people_alt_sharp),
                      SizedBox(width: 8), // Espaçamento entre o ícone e o texto
                      Text(guest),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Convidados:',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            convidadoSelecionado,
            style: TextStyle(fontSize: 16),
          ),
          TextField(
            controller: adicionar,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Adicionar',
            ),
          ),
          //Adiciona novos convidados
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              setState(() {
                String novoConvidado = adicionar.text.trim();
                if (novoConvidado.isNotEmpty) {
                  listaDeConvidados.add(novoConvidado);
                  adicionar.clear();
                }
              });
            },
            child: Text('Adicionar Convidado'),
          ),
        ],
      ),
    );
  }
}
