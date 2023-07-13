import 'package:flutter/material.dart';

class TesteCheckBoxListTile extends StatefulWidget {
  @override
  State<TesteCheckBoxListTile> createState() => _TesteCheckBoxListTileState();
}

class TaskModel {
  String title;
  bool check;

  TaskModel(this.title, this.check);
}

class _TesteCheckBoxListTileState extends State<TesteCheckBoxListTile> {
  List<TaskModel> task = [
    TaskModel("Roçar Grama", false),
    TaskModel("Tomar Café", false),
    TaskModel("Ir para Proway", false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teste CheckBox ListTile'),
      ),
      body: ListView.builder(
        itemCount: task.length,
        itemBuilder: (BuildContext context, int index) {
          return CheckboxListTile(
            value: task[index].check,
            onChanged: (value) {
              setState(() {
                task[index].check = value!;
              });
            },
            title: Text(
              task[index].title,
              style: task[index].check ? TextStyle(color: Colors.grey) : null,
            ),
          );
        },
      ),
    );
  }
}
