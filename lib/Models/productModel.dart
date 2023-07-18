import 'dart:ffi';

class ProductModel {
  String nome;
  int valor;
  String fabricante;
  String unidadeMedida;

  ProductModel(
      {required this.fabricante,
      required this.nome,
      required this.unidadeMedida,
      required this.valor});
}
