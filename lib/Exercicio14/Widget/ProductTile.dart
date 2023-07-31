import 'package:flutter/material.dart';
import 'package:flutteraula1/Exercicio14/Model/productModel.dart';
import 'package:flutteraula1/Exercicio14/Tela/TelaProdutoDescricao.dart';

class ProductTile extends StatelessWidget {
  final ProductModel produto;
  final VoidCallback? click;
  final VoidCallback? onTap;

  const ProductTile({required this.produto, this.click, this.onTap, Key? key})
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
        width: 90,
        height: 90,
        fit: BoxFit.contain,
        alignment: Alignment.center,
      ),
      title: Text(produto.nome),
      subtitle: Text(produto.fabricante),
      trailing: Text('R\$ ${produto.valor.toStringAsFixed(2)}',style: TextStyle(fontSize: 25, color: Colors.green)),
    );
  }
}