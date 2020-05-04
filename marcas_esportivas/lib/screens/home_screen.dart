import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'marcas_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/esporte1.jpg",
          fit: BoxFit.fitHeight,
          height: 800.0,
        ),
        Column(
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 25.0,
              margin: new EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 50.0,
              ),
              color: Color.fromRGBO(0, 0, 0, .1),
              child: ListTile(
                title: Text(
                  'Marcas Esportivas',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 2,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                subtitle: Text(
                  'Se você procura saber um pouco mais sobre a história das grandes marcas, você está no lugar certo! Clique no botão SAIBA MAIS',
                  style: TextStyle(
                    wordSpacing: 1,
                    letterSpacing: 0.4,
                    fontSize: 22,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MarcasScreen()));
              },
              child: Text(
                'SAIBA MAIS',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              color: Colors.white,
              hoverColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),

          ],
        ),





      ],
    );
  }
}
