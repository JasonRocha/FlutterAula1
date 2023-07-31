// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutteraula1/Exercicio14/Model/productModel.dart';
import 'package:flutteraula1/Exercicio14/Tela/TelaProdutoDescricao.dart';
import 'package:flutteraula1/Exercicio14/Widget/AppBarCustom.dart';
import 'package:flutteraula1/Exercicio14/Widget/ProductTile.dart'; // Importe o widget ProductTile

class TelaProduto extends StatefulWidget {
  const TelaProduto({Key? key}) : super(key: key);

  @override
  _TelaProdutoState createState() => _TelaProdutoState();
}

class _TelaProdutoState extends State<TelaProduto> {
  List<ProductModel> produtos = [
    ProductModel(
      fabricante: 'Bosteels',
      nome: 'Kamerliet',
      estilo: 'Belgian Tripel',
      descricao: 'De coloração dourada, aspecto translúcido e uma espuma branca e densa, a Cerveja Tripel Karmeliet é diferente de todas Belgian Tripel que você irá provar. A Tripel Karmeliet pode até mesmo ser considerada uma obra de arte belga por sua explosão de sabores e aromas complexos, podendo ser percebidos banana, baunilha e damasco ao fundo, deixando um gosto de “quero mais” a cada gole.Seguindo a receita autêntica de 1679, ela tem sua origem no Mosteiro Carmelita em Dendermonde e seu nome refere-se à quantidade de cruzes marcadas nos barris de cerveja. Agradável, leve e com o amargor na medida certa. Apesar de sua origem distante, a Triple Karmeliet harmoniza perfeitamente com a culinária brasileira',
      valor: 39.89,
      fotoProduto: 'lib/Exercicio14/Imagens/Karmeliet.jpg',
    ),
    ProductModel(
      fabricante: 'Huyghe',
      nome: 'Delirium Nocturnum',
      descricao: 'Esta excelente Belgian Strong Dark Ale é produzida com 3 tipos de levedura e 5 tipos de malte que fazem com que a Delirium Nocturnum tenha um sabor complexo com notas de frutas passas e chocolate além de um aroma adocicado. De cor escura, triplamente fermentada e bem encorpada, é a companhia ideal para o inverno.',
      valor: 41.90,
      estilo: 'Belgian Strong Dark',
      fotoProduto: 'lib/Exercicio14/Imagens/Delirium Nocturnum.jpg'
    ),
      ProductModel(
      fabricante: 'Huyghe',
      nome: 'Delirium Tremens',
      descricao: 'Esta excelente Belgian Strong Dark Ale é produzida com 3 tipos de levedura e 5 tipos de malte que fazem com que a Delirium Nocturnum tenha um sabor complexo com notas de frutas passas e chocolate além de um aroma adocicado. De cor escura, triplamente fermentada e bem encorpada, é a companhia ideal para o inverno.',
      valor: 41.90,
      estilo: 'Belgian Golden Strong Ale',
      fotoProduto: 'lib/Exercicio14/Imagens/DeliriumTremens.jpg'
    ),
          ProductModel(
      fabricante: 'Guinness',
      nome: 'Guinness Draught',
      descricao: 'A cerveja Guinness Draught é a Stout mais consumida no mundo e um ícone do estilo e das cervejas Irlandesas. Sua receita com cevada tostada e lúpulos selecionados conferem a cor e sabor distintos e extremamente equilibrada entre amargor e dulçor. A cápsula de nitrogênio que vem dentro da lata inicia uma reação química (assim que a lata é aberta), o que resulta em uma formação de espuma semelhante a do chope e preserva de forma mais eficiente as notas e cervejas desta que é uma das cervejas mais conhecidas em todos mundo.',
      valor: 24.29,
      estilo: 'Stout',
      fotoProduto: 'lib/Exercicio14/Imagens/Guinnes.jpg'
    ),
  ];

  Future<void> _exibirDetalhesProduto(BuildContext context, ProductModel produto) async {
    await Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => TelaProdutoDescricao(produto: produto),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text('Produtos'),
      ),
      body: ListView.builder(
        itemCount: produtos.length,
        itemBuilder: (context, index) {
          return ProductTile(
            produto: produtos[index], // Corrigindo o nome da propriedade
            onTap: () {
              _exibirDetalhesProduto(context, produtos[index]);
            },
          );
        },
      ),
    );
  }
}