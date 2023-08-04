// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          color: Color.fromARGB(34, 53, 213, 253),
          height: 400,
          width: 400,
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("X"),
                    Padding(
                      child: Text("O"),
                      padding: EdgeInsets.only(left: 30, right: 30),
                    ),
                    Text("X")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("O"),
                    Padding(
                      child: Text("x"),
                      padding: EdgeInsets.only(left: 30, right: 30),
                    ),
                    Text("O")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("O"),
                    Padding(
                      child: Text("x"),
                      padding: EdgeInsets.only(left: 30, right: 30),
                    ),
                    Text("O")
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
