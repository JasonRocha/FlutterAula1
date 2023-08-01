// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProductModel {
  String nome;
  double valor;
  String fabricante;
  String descricao;
  String fotoProduto;
  String estilo;
  late String coloracao;
  late String amargor;
  late String aromas;
  late String copoSugerido;

  ProductModel({
    required this.nome,
    required this.valor,
    required this.fabricante,
    required this.descricao,
    required this.fotoProduto,
    required this.estilo,
    coloracao,
    amargor,
    aromas,
    copoSugerido,
  });
}
