// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutteraula1/Exercicio14/Model/productModel.dart';

class DescricaoProduto extends StatelessWidget {
  final ProductModel produto;

  // Corrigindo o construtor
  DescricaoProduto({Key? key, required this.produto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Use a propriedade do produto para exibir a imagem
        Image.asset(produto.fotoProduto, fit: BoxFit.cover),
        Column(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(vertical: 10),
              child: Center(
                child: Text(
                  produto.nome,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 16), // Espaço entre o nome e a descrição
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Container(
            width: 500,
            padding: EdgeInsets.all(8),
            color: Colors.white24, // Cor de fundo da caixa
            child: Text(
              produto.descricao,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Fabricante:',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          produto.fabricante,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(height: 20),
        Text(
          'R\$ ${produto.valor.toStringAsFixed(2)}',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.green, // Defina a cor de fundo do botão aqui
              onPrimary:
                  Colors.greenAccent, // Defina a cor do texto do botão aqui
              textStyle: TextStyle(fontSize: 18), // Estilo do texto do botão
              padding: EdgeInsets.symmetric(
                  horizontal: 16, vertical: 8), // Espaçamento interno do botão
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(8)), // Borda arredondada do botão
            ),
            child: Text(
              'COMPRAR',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            )),
      ],
    );
  }
}
