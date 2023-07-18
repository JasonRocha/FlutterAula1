import 'package:flutter/material.dart';
import 'package:flutteraula1/Models/productModel.dart';

class ExemploList extends StatefulWidget {
  const ExemploList({super.key});

  @override
  State<ExemploList> createState() => _ExemploListState();
}

class _ExemploListState extends State<ExemploList> {
  List<ProductModel> products = [
    ProductModel(
        fabricante: 'Xiaomi',
        nome: 'celular',
        unidadeMedida: 'unidade',
        valor: 2000),
    ProductModel(
        fabricante: 'Usado',
        nome: 'Tênis Usado',
        unidadeMedida: 'Unidade com chulé',
        valor: 500),
    ProductModel(
        fabricante: 'Deus',
        nome: 'Golfinho',
        unidadeMedida: 'Duas barbatanas',
        valor: 20000)
  ];

  Widget _buildTile(BuildContext context, ProductModel products) {
    return ListTile(
      leading: Icon(Icons.shopping_cart),
      title: Text(products.nome),
      subtitle: Text(products.fabricante),
      trailing: Text(
        products.valor.toString(),
        style: TextStyle(color: Colors.green),
      ),
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
