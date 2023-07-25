import 'package:flutter/material.dart';
import 'package:flutteraula1/Exercicio14/Model/productModel.dart';

class DescricaoProduto extends StatelessWidget {
  final ProductModel produto;

  // Corrigindo o construtor
  DescricaoProduto({Key? key, required this.produto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        // Use a propriedade do produto para exibir a imagem
        Image.asset(produto.fotoProduto),
        Row(
          children: [
            Text(
              produto.nome,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'R\$ ${produto.valor.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        Text(produto.descricao),
        Text(produto.fabricante),
        SizedBox(height: 80),
      ],
    );
  }
}