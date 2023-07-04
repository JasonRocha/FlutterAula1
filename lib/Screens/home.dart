import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Color.fromARGB(34, 53, 213, 253),
        height: 400,
        width: 400,
        child: Text(
          "Oiii",
          style: TextStyle(color: Colors.red, fontSize: 40),
        ),
        padding: EdgeInsets.all(30),
      ),
    );
  }
}

/*import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text('Bem-vindo à página inicial!'),
      ),
    );
  }
}*/
