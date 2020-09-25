import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final miestilo = TextStyle(fontSize: 25);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
        elevation: 1.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Número de veces que as pulsado el botón', style: miestilo),
          Text('0', style: miestilo),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print ('Hola Mundo');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}