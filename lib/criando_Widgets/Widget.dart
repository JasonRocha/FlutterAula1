// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  final int count;

  const CustomWidget({required this.count, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(this.count.toString(),
        style: TextStyle(
          fontSize: 30,
          color: (count >= 0 ? Colors.green : Colors.red),
        ));
  }
}
