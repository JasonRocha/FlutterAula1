// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutteraula1/Exercicio1/Telas/Exercicio10_2.dart';

class Exercicio10_1 extends StatefulWidget {
  const Exercicio10_1({super.key});

  @override
  State<Exercicio10_1> createState() => _Exercicio10_1State();
}

class _Exercicio10_1State extends State<Exercicio10_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Exercicio 10'),
          automaticallyImplyLeading: false,
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Pagina 1',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => Exercicio10_1()),
                      );
                    },
                    icon: Icon(Icons.arrow_back_ios_outlined),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => Exercicio10_2()),
                      );
                    },
                    icon: Icon(Icons.arrow_forward_ios_outlined),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
