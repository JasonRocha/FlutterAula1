// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('oi')),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Theme.of(context).colorScheme.primary,
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: (){},
                icon:Icon(Icons.home)),
                 IconButton(
                onPressed: (){},
                icon:Icon(Icons.list)),
                 IconButton(
                onPressed: (){},
                icon:Icon(Icons.person)),
                 IconButton(
                onPressed: (){},
                icon:Icon(Icons.settings))
            ],
          ),
          ),
        ),
      )
    );
  }
}