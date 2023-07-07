// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:validators/validators.dart' as validator;

class Exercicio6 extends StatefulWidget {
  @override
  State<Exercicio6> createState() => _Exercicio6State();
}

class _Exercicio6State extends State<Exercicio6> {
  final formKey = GlobalKey<FormState>();
  TextEditingController usuarioController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercicio 6",
            style: TextStyle(fontSize: 33, color: Colors.black54)),
        backgroundColor: Colors.tealAccent,
      ),
      body: Center(
        child: Container(
          color: Colors.deepPurple,
          width: 300,
          height: 200,
          child: Form(
            key: formKey,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                width: 200,
                child: TextFormField(
                  controller: usuarioController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Usuario',
                  ),
                  validator: (value) {
                    if (validator.isNull(value)) {
                      return 'Usuario obrigatorio';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                width: 200,
                child: TextFormField(
                  controller: senhaController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Senha',
                  ),
                  validator: (value) {
                    if (validator.isNull(value)) {
                      return 'Senha deve possuir pelomenos 6 digitos';
                    }
                    return null;
                  },
                ),
              ),
              Row(
                children: [
                  TextButton(
                      onPressed: () {
                        Text('Login');
                      },
                      child: const Text("Login")),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text("Esqueci minha senha")),
                  ),
                ],
              ),
              TextButton(
                  onPressed: () {},
                  child: Text("Ainda não tem uma conta? Clique aqui!"))
            ]),
          ),
        ),
      ),
    );
  }
}
