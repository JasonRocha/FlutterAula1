// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:validators/validators.dart' as validator;

class Exercicio6 extends StatefulWidget {
  @override
  State<Exercicio6> createState() => _Exercicio6State();
}

class _Exercicio6State extends State<Exercicio6> {
  final formKey = GlobalKey<FormState>();
  TextEditingController _usuarioController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();

  String _errorMensage = '';

  @override
  void dispose() {
    _usuarioController.dispose();
    _senhaController.dispose();
    super.dispose();
  }

  void _login() {
    if (formKey.currentState!.validate()) {
      String login = _usuarioController.text;
      String password = _senhaController.text;
      setState(() {
        _errorMensage = '';
      });
    } else {
      setState(() {
        _errorMensage = 'Please fix the errors above';
      });
    }
  }

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
          color: Color.fromARGB(255, 3, 1, 90),
          width: MediaQuery.of(context).size.width,
          height: 500,
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: SizedBox(
                        width: 200,
                        child: TextFormField(
                          controller: _usuarioController,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 0.5)),
                              labelText: 'Usuario',
                              labelStyle: TextStyle(color: Colors.white)),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Informe seu usuario';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: SizedBox(
                        width: 200,
                        child: TextFormField(
                          controller: _senhaController,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 0.5)),
                              labelText: 'Senha',
                              labelStyle: TextStyle(color: Colors.white)),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Informe sua senha';
                            }
                            if (value.length < 6) {
                              return 'A senha deve possuir no mínimo 6 dígitos!';
                            }
                            if (value.length > 12) {
                              return 'A senha deve possuir no máximo 12 dígitos!';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: _login,
                          child: Text('Login',
                              style: TextStyle(color: Colors.white30)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(),
                          child: TextButton(
                              onPressed: () {},
                              child: const Text("Esqueci minha senha",
                                  style: TextStyle(color: Colors.white30))),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextButton(
                          onPressed: () {},
                          child: Text("Ainda não tem uma conta? Clique aqui!",
                              style: TextStyle(color: Colors.white30))),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
