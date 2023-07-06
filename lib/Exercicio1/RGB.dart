import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorChangingText(),
    );
  }
}

class ColorChangingText extends StatefulWidget {
  @override
  _ColorChangingTextState createState() => _ColorChangingTextState();
}

class _ColorChangingTextState extends State<ColorChangingText> {
  Color textColor = Colors.black;

  @override
  void initState() {
    super.initState();
    startColorChange();
  }

  void startColorChange() {
    // Intervalo de mudança de cor (3 segundos neste exemplo)
    Duration interval = Duration(seconds: 0);

    // Função que altera a cor aleatoriamente
    void changeColor() {
      setState(() {
        textColor = Color(Random().nextInt(0xFFFFFFFF));
      });
    }

    // Repetir a mudança de cor a cada intervalo
    Timer.periodic(interval, (timer) {
      changeColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Texto com cor aleatória',
            style: TextStyle(
                color: textColor, fontSize: 50, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
