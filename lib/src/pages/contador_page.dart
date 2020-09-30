import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

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
        elevation: 2.0,
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
      floatingActionButton: _crearbotones(),
    );
  }

  Widget _crearbotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 30,),
        FloatingActionButton(onPressed: inicializar, child: Icon(Icons.exposure_zero),),
        Expanded(child: SizedBox()),
        FloatingActionButton(onPressed: restar, child: Icon(Icons.remove),),
        FloatingActionButton(onPressed: sumar, child: Icon(Icons.add),),
      ],
    );
  }

  void inicializar (){setState(() {_contador=0;});}
  void restar (){setState(() {_contador--;});}
  void sumar (){setState(() {_contador++;});}
}