// ignore_for_file: prefer_const_constructors, unnecessary_this

import 'package:flutter/material.dart';
import 'package:flutteraula1/ExemploProfessor/models/productModel.dart';
import 'package:flutteraula1/ExemploProfessor/screens/productDetailWithParams.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<ProductModel> products = [
    ProductModel(
        nome: "Celular",
        valor: 2000,
        fabricante: "Xiaomi",
        unidadeMedida: "Unidade"),
    ProductModel(
        nome: "Tênis usado",
        valor: 500,
        fabricante: "Usado",
        unidadeMedida: "Unidade com chulé"),
    ProductModel(
        nome: "Golfinho",
        valor: 20000,
        fabricante: "Deus",
        unidadeMedida: "2 barbatanas")
  ];

  Widget _buildTile(BuildContext context, ProductModel product) {
    return ListTile(
      leading: Icon(Icons.shopping_cart),
      title: Text(product.nome),
      subtitle: Text(product.fabricante),
      trailing: Text(
        product.valor.toString(),
        style: TextStyle(color: Colors.green),
      ),
      onTap: () {
        //Navigator.of(context).pushNamed("/details", arguments: product);
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) =>
                  ProductDetailWithParams(productModel: product),
              settings: RouteSettings(arguments: product)),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de produtos"),
      ),
      body: ListView.builder(
        itemCount: this.products.length,
        itemBuilder: (context, index) =>
            this._buildTile(context, this.products[index]),
      ),
    );
  }
}
