import 'package:flutter/material.dart';

class Exercicio7 extends StatefulWidget {
  @override
  State<Exercicio7> createState() => _Exercicio7State();
}

class _Exercicio7State extends State<Exercicio7> {
  final List<String> listaDeConvidados = [
    'Convidado 1',
    'Convidado 2',
    'Convidado 3',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercicio 7'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: ListView.builder(
        itemCount: listaDeConvidados.length,
        itemBuilder: (context, index) {
          final guest = listaDeConvidados[index];
          return TextButton(
            onPressed: () {
              print('Botão pressionado: $guest');
              // Lógica a ser executada ao pressionar o botão
            },
            child: Row(
              children: [
                Icon(Icons.person_search_sharp),
                SizedBox(width: 8), // Espaçamento entre o ícone e o texto
                Text(guest),
              ],
            ),
          );
        },
      ),
    );
  }
}
