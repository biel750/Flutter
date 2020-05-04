import 'package:br/models/marca_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MarcasDetalhesScreen extends StatelessWidget {
  MarcaModel marcaModel;

  MarcasDetalhesScreen(this.marcaModel);

  @override
  Widget build(BuildContext context) {


    final topContent = Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10.0),
          height: MediaQuery.of(context).size.height * 0.359,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("images/esporte.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.359,
          width: MediaQuery.of(context).size.width ,
          decoration: BoxDecoration(color: Color.fromRGBO(50, 60, 80, .6)),
        ),
        Positioned(
          left: 8.0,
          top: 60.0,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 34.0,
            ),
          ),
        )
      ],
    );

    final bottomContentText = Text(
      marcaModel.conteudo,
      style: TextStyle(fontSize: 18.0, color: Colors.white,wordSpacing: 0.2,
        letterSpacing: 0.2,),
      textAlign: TextAlign.justify,
    );

    final readButton = Padding(
      padding: EdgeInsets.all(15.0),
      child: Image.asset(marcaModel.imagem, fit: BoxFit.cover, ),
    );

    final bottomContent = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(40.0),
      child: Center(
        child: Column(
          children: <Widget>[
            bottomContentText,
            readButton,
          ],
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
        children: <Widget>[
          topContent,
          bottomContent,
        ],
      ),
      ),
    );
  }
}
