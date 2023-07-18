import 'package:flutter/material.dart';

import '../models/productModel.dart';

class ProductDetailWithParams extends StatelessWidget {
  final ProductModel productModel;

  const ProductDetailWithParams({required this.productModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(productModel.nome),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Fabricante"),
            subtitle: Text(productModel.fabricante),
          ),
          ListTile(
            title: Text("Unidade de Medida"),
            subtitle: Text(productModel.unidadeMedida),
          ),
          ListTile(
            title: Text("Valor"),
            subtitle: Text(productModel.valor.toString()),
          ),
        ],
      ),
    );
  }
}
