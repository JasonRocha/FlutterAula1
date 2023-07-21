import 'package:flutter/material.dart';

typedef ContadorCallback = void Function(int contador);

class ColoredContainer extends StatelessWidget {
  final Color cor;

  //final Widget? filho;
  final List<Widget> filhos;
  final VoidCallback? aoClicar;
  final ContadorCallback? aoClicarEContar;
  int _counter = 0;

  ColoredContainer(
      {required this.cor,
      required this.filhos,
      this.aoClicar,
      this.aoClicarEContar,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (aoClicar != null) aoClicar!();

        this._counter++;

        if (aoClicarEContar != null)
          aoClicarEContar!(_counter);
      },
      child: Container(
        alignment: Alignment.center,
        color: this.cor,
        height: 500,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: filhos,
        ),
      ),
    );
  }
}
