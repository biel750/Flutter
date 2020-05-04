import 'package:br/screens/home_screen.dart';
import 'package:br/screens/marcas_detalhes_screen.dart';
import 'package:br/screens/marcas_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
    theme: ThemeData(hintColor: Colors.white),

  ));
}

/*
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marcas Esportivas',
      theme: new ThemeData(
        primaryColor: Color.fromRGBO(58, 66, 86, 1.0),
        fontFamily: 'Arial',
      ),









    );

  }
}
*/