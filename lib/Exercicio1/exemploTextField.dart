import 'package:flutter/material.dart';

class ExemploTextField extends StatefulWidget {
  const ExemploTextField({super.key});

  @override
  State<ExemploTextField> createState() => _ExemploTextFieldState();
}

class _ExemploTextFieldState extends State<ExemploTextField> {
  TextEditingController nomeUsuario = TextEditingController();
  String nome = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo de TextField"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: TextField(
                  controller: nomeUsuario,
                  decoration: InputDecoration(
                    labelText: "Seu nome é"
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {
                setState(() {
                  this.nome = nomeUsuario.text;

                  nomeUsuario.text = "";
                });
              }, child: Text("Se apresentar"))
            ],
          ),
          Container(
            height: 500,
            alignment: Alignment.center,
            child: Text("Olá, ${this.nome}", style: TextStyle(fontSize: 44),),
          )
        ],
      ),
    );
  }
}
