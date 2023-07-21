// ignore_for_file: must_be_immutable, library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:flutteraula1/Models/productModel.dart';

import 'package:flutteraula1/criando_Widgets/ProductTile.dart';

class TelaProduto extends StatefulWidget {
  const TelaProduto({Key? key}) : super(key: key);

  @override
  _TelaProdutoState createState() => _TelaProdutoState();
}

class _TelaProdutoState extends State<TelaProduto> {
  List<ProductModel> produtos = [
    ProductModel(
      fabricante: 'Teste',
      nome: 'Bota',
      descricao: 'descricao',
      valor: 20000,
      fotoProduto: 'fotoProduto',
    ),
    ProductModel(
      fabricante: 'Teste2',
      nome: 'Bota2',
      descricao: 'descricao2',
      valor: 20000,
      fotoProduto: 'fotoProduto2',
    ),
    // Adicione outros produtos à lista, se necessário.
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Produtos'),
        ),
        body: ListView.builder(
          itemCount: produtos.length,
          itemBuilder: (context, index) {
            return ProductTaile(produtos: produtos[index]);
          },
        ));
  }
}
