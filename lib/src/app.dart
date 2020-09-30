import 'package:flutter/material.dart';

import 'package:aplicacion_contador/src/pages/contador_page.dart';
//import 'package:aplicacion_contador/src/pages/home_page.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: ContadorPage(),
        )
    );
  }

}