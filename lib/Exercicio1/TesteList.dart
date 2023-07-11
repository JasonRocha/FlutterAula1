import 'package:flutter/material.dart';

class TesteList extends StatefulWidget {
  @override
  State<TesteList> createState() => _TesteListState();
}

class _TesteListState extends State<TesteList> {
  List<String> vrItemList = [
    'Item 1',
    'Item 2',
    'Item 3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista View')),
      body: ListView.builder(
        itemCount: vrItemList.length,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              Text((index + 1).toString()),
              SizedBox(width: 30),
              Text(vrItemList[index]),
            ],
          );
        },
      ),
    );
  }
}
