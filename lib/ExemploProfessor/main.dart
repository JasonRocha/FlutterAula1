import 'package:aula8/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutteraula1/criando_Widgets/TesteWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: TesteWidget());
  }
}
