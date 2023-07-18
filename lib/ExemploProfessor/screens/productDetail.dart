import 'package:flutter/material.dart';
import 'package:flutteraula1/ExemploProfessor/models/productModel.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    ProductModel productModel =
        ModalRoute.of(context)!.settings.arguments as ProductModel;

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
