import 'package:flutter/material.dart';
import 'package:flutteraula1/Models/productModel.dart';

class ProductTaile extends StatelessWidget {
  final ProductModel produtos;

  const ProductTaile({required this.produtos, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(produtos.fotoProduto),
      title: Text(produtos.nome),
      subtitle: Text(produtos.fabricante),
      trailing: Text(produtos.valor.toString()),
    );
  }
}
