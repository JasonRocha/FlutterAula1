import 'package:flutter/material.dart';
import 'package:flutteraula1/ExemploProfessor/screens/productDetail.dart';
import 'package:flutteraula1/ExemploProfessor/screens/productList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => ProductList(),
        "/details": (context) => ProductDetail(),
      },
    );
  }
}
