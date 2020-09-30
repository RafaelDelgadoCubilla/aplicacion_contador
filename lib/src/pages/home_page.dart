import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final _miestilo = TextStyle(fontSize: 25);
  final _contador=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
        elevation: 1.0,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Número de veces que has pulsado el botón', style: _miestilo),
            Text('$_contador', style: _miestilo),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print ('Hola Mundo');
          //_contador++;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}