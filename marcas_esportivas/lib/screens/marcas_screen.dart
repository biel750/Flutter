import 'package:br/models/marca_model.dart';
import 'package:br/repository/marca_repository.dart';
import 'package:br/screens/marcas_detalhes_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MarcasScreen extends StatefulWidget {
  @override
  _MarcasScreenState createState() => _MarcasScreenState();
}

class _MarcasScreenState extends State<MarcasScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "Marcas Esportivas",
            style: TextStyle(
                fontSize: 23.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto'),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: FutureBuilder<List<MarcaModel>>(
        future: MarcaRepository().findAllAsync(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return buildListView(snapshot.data);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  ListView buildListView(List<MarcaModel> marcas) {
    return ListView.builder(
      itemCount: marcas == null ? 0 : marcas.length,
      itemBuilder: (BuildContext ctx, int index) {
        return cardMarca(marcas[index]);
      },
    );
  }

  Card cardMarca(MarcaModel marca) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 12.0,
      margin: new EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 6.0,
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(
              color: Color.fromRGBO(170, 170, 170, 1.0),
              width: 4,
            )),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: new BoxDecoration(
              border: new Border(
                right: new BorderSide(
                  width: 1.0,
                  color: Colors.white24,
                ),
              ),
            ),
            child: Image.asset(
              marca.imagem,
              fit: BoxFit.contain,
              width: 50.0,
              height: 50.0,
            ),
          ),
          title: Text(
            marca.nome,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
          subtitle: Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Text(
                    marca.slogan,
                    style: TextStyle(
                      color: Color.fromRGBO(170, 170, 170, 1.0),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.only(left: 100.0, bottom: 20.0),
                ),
              )
            ],
          ),
          trailing: Icon(
              Icons.navigate_next,
              color: Colors.white,
              size: 30.0,
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MarcasDetalhesScreen(marca), )
            );


          },
        ),
      ),
    );
  }
}
