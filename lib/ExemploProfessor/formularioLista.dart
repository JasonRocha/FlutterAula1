import 'package:flutter/material.dart';

class FormularioLista extends StatefulWidget {
  const FormularioLista({super.key});

  @override
  State<FormularioLista> createState() => _FormularioListaState();
}

class _FormularioListaState extends State<FormularioLista> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: TextField(

                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text("asdasd"))
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: Text("shdsahfsahfs"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
