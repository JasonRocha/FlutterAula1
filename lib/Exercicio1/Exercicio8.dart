import 'package:flutter/material.dart';

class Exercicio8 extends StatefulWidget {
  @override
  State<Exercicio8> createState() => _Exercicio8State();
}

class _Exercicio8State extends State<Exercicio8> {
  List<String> listaDeTarefa = [
    'Tarefa 1',
    'Tarefa 2',
    'Tarefa 3',
  ];
  TextEditingController adicionarTarefa = TextEditingController();
  Map<String, bool> tarefasSelecionadas = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercicio 8'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 600,
                      child: Container(
                        width: 500,
                        child: TextField(
                          controller: adicionarTarefa,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Adicionar nova tarefa',
                          ),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        String novaTarefa = adicionarTarefa.text.trim();
                        if (novaTarefa.isNotEmpty) {
                          listaDeTarefa.add(novaTarefa);
                          tarefasSelecionadas[novaTarefa] = false;
                          adicionarTarefa.clear();
                        }
                      });
                    },
                    child: Text('Adicionar Tarefa'),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: listaDeTarefa.map((tarefa) {
                    return ListTile(
                        leading: Icon(Icons.menu_book_sharp),
                        title: Text(tarefa),
                        trailing: Checkbox(
                          value: tarefasSelecionadas[tarefa] ?? false,
                          onChanged: (value) {
                            setState(() {
                              tarefasSelecionadas[tarefa] = value!;
                            });
                          },
                        ));
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
