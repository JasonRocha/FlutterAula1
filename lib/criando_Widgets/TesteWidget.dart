// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutteraula1/criando_Widgets/Widget.dart';

class TesteWidget extends StatefulWidget {
  const TesteWidget({Key? key}) : super(key: key);

  @override
  State<TesteWidget> createState() => _TesteWidgetState();
}

class _TesteWidgetState extends State<TesteWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teste'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomWidget(
              count: count,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                    icon: Icon(Icons.add),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          count--;
                        });
                      },
                      icon: Icon(Icons.remove))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
