import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ContadorPage extends StatefulWidget {

  @override
  //_MyState createState() => _MyState();
  ContadorPageState createState() => ContadorPageState();
}

class ContadorPageState extends State<ContadorPage>{
  final _miestilo = TextStyle(fontSize: 25);
  int _contador=0;

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
          //print ('Hola Mundo');
          setState(() {
            _contador++;  
          });
          
        },
        child: Icon(Icons.add),
      ),
    );
  }
}