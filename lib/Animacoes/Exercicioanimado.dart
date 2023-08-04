// ignore_for_file: unnecessary_this, unnecessary_new, prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_overrides

import 'package:flutter/material.dart';

class Exercicioanimado extends StatefulWidget {
  const Exercicioanimado({super.key});

  @override
  State<Exercicioanimado> createState() => _ExercicioanimadoState();
}

class _ExercicioanimadoState extends State<Exercicioanimado>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    this.animationController =
        new AnimationController(vsync: this, duration: Duration(seconds: 3));

    this.animationController.addListener(() {
      setState(() {});
    });
    this.animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        this.animationController.reverse();
      }

      if (status == AnimationStatus.dismissed) {
        this.animationController.forward();
      }
    });

    this.animation = new Tween<double>(begin: 100, end: 500)
        .animate(this.animationController);

    this.animationController.repeat();
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
        title: Text('Exercicion animação'),
      ),
      body: Stack(
        children: [
          Positioned(
              top: 100,
              left: this.animation.value,
              child: Icon(Icons.bus_alert_rounded)),
        ],
      ),
    );
  }
}
