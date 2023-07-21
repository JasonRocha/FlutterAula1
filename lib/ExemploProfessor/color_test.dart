import 'package:aula8/widgets/colored_container.dart';
import 'package:flutter/material.dart';

class ColorTest extends StatefulWidget {
  const ColorTest({super.key});

  @override
  State<ColorTest> createState() => _ColorTestState();
}

class _ColorTestState extends State<ColorTest> {
  List<Color> cores = [
    Colors.yellow,
    Colors.green,
    Colors.red,
    Colors.black,
    Colors.blue
  ];

  int currentColor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teste de cores"),
      ),
      body: ListView(children: [
        ColoredContainer(
          cor: cores[currentColor],
          aoClicar: () => print("Clicaram aqui!"),
          aoClicarEContar: (contador) {
            setState(() {
              currentColor++;

              if (currentColor >= cores.length) currentColor = 0;
            });
          },
          filhos: [Text("Olá"), Text("Mundo!")],
        ),
        ColoredContainer(cor: Colors.purple, filhos: [])
      ]),
    );
  }
}
