import 'package:flutter/material.dart';

class Exercicio1 extends StatefulWidget {
  const Exercicio1({super.key});

  @override
  State<Exercicio1> createState() => _Exercicio1State();
}

class _Exercicio1State extends State<Exercicio1> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    this.animationController = new AnimationController(vsync: this, duration: Duration(seconds: 3));

    this.animationController.addListener(() {
      setState(() {

      });
    });

    /*
    this.animationController.addStatusListener((status) {

      if (status == AnimationStatus.completed) {
        this.animationController.forward();
        return;
      }

      if (status == AnimationStatus.dismissed) {
        this.animationController.forward();
      }

    });

     */

    this.animation = new Tween<double>(begin: 100, end: 500).animate(this.animationController);

    this.animationController.repeat();
  }


  @override
  void dispose() {
    this.animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("AnimationController progress: ${this.animationController.value}");

    return Scaffold(
      appBar: AppBar(
        title: Text("Carrinho em movimento"),
      ),
      body: Stack(
        children: [
          Positioned(
              top: 160,
              left: 100,
              child: Container(
                height: 40,
                width: 500,
                color: Colors.grey,
              )),
          Positioned(
            top: 100,
            left: this.animation.value,
            child: Image.asset("assets/car.png", width: 100,))],
      ),
    );
  }
}
