// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutteraula1/Exercicio14/Model/productModel.dart';
import 'package:flutteraula1/Exercicio14/Tela/TelaProdutoDescricao.dart';

class ProductTile extends StatelessWidget {
  final ProductModel produto;

  final VoidCallback? onTap;

  const ProductTile({required this.produto, this.onTap, Key? key})
      : super(key: key);

  Future<void> _exibirDetalhesProduto(BuildContext context) async {
    await Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => TelaProdutoDescricao(produto: produto),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        _exibirDetalhesProduto(context);
      },
      leading: Image.asset(
        produto.fotoProduto, // Caminho da imagem a partir de "assets"
        width: 60,
        //height: 80,
        fit: BoxFit.cover,
        alignment: Alignment.center,
      ),
      title: Text(produto.nome),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(produto.fabricante),
          Row(
            children: [
              Text(
                'Estilo: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(produto.estilo),
            ],
          ),
        ],
      ),
      trailing: Text('R\$ ${produto.valor.toStringAsFixed(2)}',
          style: const TextStyle(fontSize: 25, color: Colors.green)),
    );
  }
}
