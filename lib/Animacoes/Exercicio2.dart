// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Exercicio2 extends StatefulWidget {
  const Exercicio2({super.key});

  @override
  State<Exercicio2> createState() => _Exercicio2State();
}

class _Exercicio2State extends State<Exercicio2>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    this.animationController =
        new AnimationController(vsync: this, duration: Duration(seconds: 3));

    this.animation = new Tween<double>(begin: 100, end: 500)
        .animate(this.animationController);
  }

  @override
  void dispose() {
    this.animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercicio 3'),
      ),
      body: Center(
        child: Container(
          width: 500,
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Usuario',
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Senha',
                ),
              ),
              SizedBox(
                height: 70,
              )
            ],
          ),
        ),
      ),
    );
  }
}
