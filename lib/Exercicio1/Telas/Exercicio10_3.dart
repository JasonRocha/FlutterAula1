import 'package:flutter/material.dart';
import 'package:flutteraula1/Exercicio1/Telas/Exercicio10_2.dart';
import 'package:flutteraula1/Exercicio1/Telas/Exercicio10_4.dart';
import 'package:flutteraula1/Exercicio1/Telas/Tela_2.dart';

class Exercicio10_3 extends StatefulWidget {
  const Exercicio10_3({super.key});

  @override
  State<Exercicio10_3> createState() => _Exercicio10_3State();
}

class _Exercicio10_3State extends State<Exercicio10_3> {
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
                child: Image(
                  image: AssetImage("lib/images/triangulo-fritando.gif"),
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
                      Navigator.of(context).pop(
                        MaterialPageRoute(
                            builder: (context) => Exercicio10_2()),
                      );
                    },
                    icon: Icon(Icons.arrow_back_ios_outlined),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => Exercicio10_4()),
                      );
                    },
                    icon: Icon(Icons.arrow_forward_ios_outlined),
                  )
                ],
                /*IconButton(
              onPressed: () {
                // Ação quando o botão é pressionado
              },
              icon: Icon(Icons.favorite),
            )*/
              ),
            ),
          ],
        ));
  }
}
