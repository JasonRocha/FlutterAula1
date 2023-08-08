// ignore_for_file: prefer_const_constructors, unnecessary_this

import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  final double? espacoEntreComponentes;
  final double? espacoBordas;
  final Widget? filho;
  const LoginForm(
      {super.key,
      required this.espacoBordas,
      required this.espacoEntreComponentes,
      required this.filho});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: (this.espacoBordas ?? 0.0)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'Usuário'),
          ),
          SizedBox(
            height: (this.espacoEntreComponentes ?? 0.0),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Senha'),
            obscureText: true,
          ),
          SizedBox(
            height: (this.espacoEntreComponentes ?? 0.0),
          ),
        ],
      ),
    ));
  }
}
