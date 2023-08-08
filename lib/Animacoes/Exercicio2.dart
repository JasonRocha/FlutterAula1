// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutteraula1/criando_Widgets/loginform.dart';

/*class Exercicio2 extends StatefulWidget {
  const Exercicio2({Key? key}) : super(key: key);

  @override
  State<Exercicio2> createState() => _Exercicio2State();
}

class _Exercicio2State extends State<Exercicio2>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));

    animation = Tween<double>(begin: 500, end: 50).animate(animationController);

    animationController.forward().then((_) {
      setState(() {
        isLoading = true; // Ativa o sinal de carregamento após a animação
      });
    });

    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();

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
          width: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Usuario',
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Senha',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              AnimatedBuilder(
                animation: animation,
                builder: (context, child) {
                  return Container(
                    width: animation.value,
                    height: 50,
                    color: Colors.blue,
                    child: Center(child: Text('Login')),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Exercicio2 extends StatefulWidget {
  const Exercicio2({Key? key}) : super(key: key);

  @override
  State<Exercicio2> createState() => _Exercicio2State();
}

class _Exercicio2State extends State<Exercicio2>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));

    animation =
        Tween<double>(begin: 500, end: 100).animate(animationController);

    animationController.forward().then((_) {
      setState(() {
        isLoading = true; // Ativa o sinal de carregamento após a animação
      });
    });
  }

  @override
  void dispose() {
    animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercicio 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Usuario',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Senha',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 9),
              child: AnimatedBuilder(
                animation: animation,
                builder: (context, child) {
                  if (isLoading) {
                    // Exibe o sinal de carregamento (CircularProgressIndicator)
                    return CircularProgressIndicator();
                  } else {
                    // Exibe o retângulo diminuindo de tamanho
                    return Container(
                      width: animation.value,
                      height: 50,
                      color: Colors.blue,
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Exercicio2 extends StatefulWidget {
  const Exercicio2({super.key});

  @override
  State<Exercicio2> createState() => _Exercicio2State();
}

class _Exercicio2State extends State<Exercicio2> {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));

    animation =
        Tween<double>(begin: 500, end: 100).animate(animationController);
  }

  @override
  void dispose() {
    animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LoginForm(
          espacoBordas: 50,
          espacoEntreComponentes: 20,
          filho: Container(
              height: 50,
              width: 500,
              child: ElevatedButton(onPressed: () {}, child: Text('Login'))),
        ),
      ),
    );
  }
}*/
