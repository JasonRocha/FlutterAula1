import 'package:flutter/material.dart';
import 'package:flutteraula1/AnimacoesExercicio/model/Noticia_model.dart';
import 'package:flutteraula1/AnimacoesExercicio/widget/Widget_tela.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  List<Noticia_model> noticias = [
    Noticia_model(
        titulo_Noticia: 'Teste',
        descricao: 'descricao',
        foto: 'foto',
        texto_Noticia: 'texto_Noticia')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Teste')),
      body: ListView.builder(
        itemCount: noticias.length,
        itemBuilder: (context, index) {
          return Widget_tela(
            noticias: noticias[index], // Corrigindo o nome da propriedade
            onTap: () {},
          );
        },
      ),
    );
  }
}
