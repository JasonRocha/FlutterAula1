// ignore_for_file: no_logic_in_create_state, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutteraula1/Exercicio14/Model/productModel.dart';
import 'package:flutteraula1/Exercicio14/Widget/DescricaoProduto.dart';


class TelaProdutoDescricao extends StatefulWidget {
  final ProductModel produto;

  TelaProdutoDescricao({required this.produto, Key? key}) : super(key: key);

  @override
  State<TelaProdutoDescricao> createState() => _TelaProdutoDescricaoState(produto: produto);
}

class _TelaProdutoDescricaoState extends State<TelaProdutoDescricao> {
  final ProductModel produto;

  _TelaProdutoDescricaoState({required this.produto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Descrição do produto ${produto.nome}'),
      ),
      body: DescricaoProduto(produto: produto), // Use o nome correto do widget aqui
    );
  }
}