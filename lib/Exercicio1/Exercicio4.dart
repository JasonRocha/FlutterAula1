import 'package:flutter/material.dart';

class Exercicio4 extends StatefulWidget {
  @override
  State<Exercicio4> createState() => _Exercicio4();
}

class _Exercicio4 extends State<Exercicio4> {
  TextEditingController valor1Controle = TextEditingController();
  TextEditingController valor2Controle = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exercicio 4"),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: TextField(
                    controller: valor1Controle,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Valor 1',
                    ),
                  ),
                ),
                TextField(
                  controller: valor2Controle,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Valor 2',
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            calculate('+');
                          },
                          child: const Text("+"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            onPressed: () {
                              calculate('-');
                            },
                            child: const Text("-")),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            onPressed: () {
                              calculate('*');
                            },
                            child: const Text("*")),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            onPressed: () {
                              calculate('/');
                            },
                            child: const Text("/")),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    "= $result",
                    style: const TextStyle(fontSize: 35, color: Colors.grey),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void calculate(String operation) {
    double valor1 = double.tryParse(valor1Controle.text) ?? 0;
    double valor2 = double.tryParse(valor2Controle.text) ?? 0;

    setState(
      () {
        switch (operation) {
          case '+':
            result = valor1 + valor2;
            break;
          case '-':
            result = valor1 - valor2;
            break;
          case '*':
            result = valor1 * valor2;
            break;
          case '/':
            result = valor1 / valor2;
            break;
        }
      },
    );
  }
}
