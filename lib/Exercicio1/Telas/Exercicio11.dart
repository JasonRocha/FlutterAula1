// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_final_fields, non_constant_identifier_names, unnecessary_this, unused_import, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:flutteraula1/Exercicio1/Telas/Exercicio11_2.dart';
import 'package:flutteraula1/Models/Exercici11Model.dart';
import 'package:validators/validators.dart' as validator;

class Exercici11Model {
  String nome;
  String email;

  Exercici11Model(this.nome, this.email);
}

class Exercicio11 extends StatefulWidget {
  const Exercicio11({Key? key}) : super(key: key);

  @override
  State<Exercicio11> createState() => _Exercicio11State();
}

class _Exercicio11State extends State<Exercicio11> {
  final _formKey = GlobalKey<FormState>();
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();

  void _cadastrar() {
    if (_formKey.currentState!.validate()) {
      // Realizar o cadastro
      Exercici11Model usuario =
          Exercici11Model(_nomeController.text, _emailController.text);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Exercicio11_2(usuario: usuario),
        ),
      );
    }
  }

  @override
  void dispose() {
    _nomeController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  Widget _fon(BuildContext context) {
    return Form(
      key: _formKey,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'Bem vindo a tela de cadastro do usuário. Preencha as informações abaixo para iniciar o cadastro',
                style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(
              width: 500,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: TextField(
                  controller: _nomeController,
                  decoration: InputDecoration(labelText: 'Nome'),
                ),
              ),
            ),
            SizedBox(
              width: 500,
              child: TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'E-mail'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, insira o e-mail';
                  }
                  if (!value.contains('@')) {
                    return 'Por favor, insira um e-mail válido';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: ElevatedButton(
                onPressed: _cadastrar,
                child: Text('Cadastrar'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercicio 11'),
      ),
      body: _fon(context),
    );
  }
}
