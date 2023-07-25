import 'package:flutter/material.dart';
import 'package:flutteraula1/Exercicio14/Model/productModel.dart';
import 'package:flutteraula1/Exercicio14/Tela/TelaProdutoDescricao.dart';
import 'package:flutteraula1/Exercicio14/Widget/ProductTile.dart'; // Importe o widget ProductTile

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

  Future<void> _exibirDetalhesProduto(BuildContext context, ProductModel produto) async {
    await Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => TelaProdutoDescricao(produto: produto),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produtos'),
      ),
      body: ListView.builder(
        itemCount: produtos.length,
        itemBuilder: (context, index) {
          return ProductTile(
            produto: produtos[index], // Corrigindo o nome da propriedade
            onTap: () {
              _exibirDetalhesProduto(context, produtos[index]);
            },
          );
        },
      ),
    );
  }
}