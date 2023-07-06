// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class exercicio2 extends StatelessWidget {
  const exercicio2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text("OI", style: TextStyle(fontSize: 24)),
          Padding(
            child: Text("Hello", style: TextStyle(fontSize: 24)),
            padding: EdgeInsetsDirectional.symmetric(vertical: 9),
          ),
          Text("Holla", style: TextStyle(fontSize: 24))
        ],
      ),
    );
  }
}
