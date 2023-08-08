import 'package:flutter/material.dart';
import 'package:flutteraula1/AnimacoesExercicio/model/Noticia_model.dart';

class Widget_tela extends StatelessWidget {
  final Noticia_model noticias;
  const Widget_tela(
      {super.key, required Null Function() onTap, required this.noticias});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(noticias.foto),
      title: Text('dhausdhia'),
      subtitle: Text('Teste'),
    );
  }
}
