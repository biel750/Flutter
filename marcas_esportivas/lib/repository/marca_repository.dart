import 'package:br/models/marca_model.dart';
import 'package:flutter/cupertino.dart';

import 'database.dart';

class MarcaRepository {


  Future<List<MarcaModel>> findAllAsync() async {
    var db = Database();
    await db.createDatabase();

    List<MarcaModel> marcas = new List<MarcaModel>();

    marcas = new List<MarcaModel>();
    if (db.created) {
      ;
      marcas.add(
        new MarcaModel(
          id: 1,
          nome: 'Adidas',
          slogan: 'Impossible is nothing',
          imagem: 'images/adidas.jpg',
            conteudo: 'ADIDAS, é uma empresa fundada na Alemanha, o nome "adidas" é uma união entre o apelido, Adi, e o sobrenome, Dassler do fundador da empresa "Adi Dassler".Em agosto de 2005, a Adidas anunciou a compra da empresa Reebok por 3,8 bilhões de dólares. Com a aquisição, a Adidas passou a disputar mercados em condições iguais com a Nike. Em 11 de abril de 2006, a adidas anunciou um contrato de 11 anos para se tornar o fornecedor de vestuário oficial da NBA. O acordo, cujo valor foi estimado em mais de 400 milhões de dólares, substituiu o contrato anterior de 10 anos com a Reebok, anunciado em 2001. '
        ),
      );
      marcas.add(
        new MarcaModel(
          id: 2,
          nome: 'Asics',
          slogan: 'Sound mind, sound body',
          imagem: 'images/asics.jpg',
          conteudo: 'ASICS, é uma empresa de artigos desportivos fundada em 1949 por Kihachiro Onitsuka em Kobe, Japão. Em 1977 os tênis da Asics foram introduzidos no mercado norte-americano sob a marca "Tiger". A empresa tem como destaque a especialidade em produzir equipamentos para atletismo, para isso, possui em centro de pesquisas próprio no Japão. Em matérias de venda de material esportivo, a ASICS ocupa a quinta colocação no cenário brasileiro. Visando expandir a marca a longo prazo a ASICS pretende entrar no mundo do futebol.'
        ),
      );
      marcas.add(
        new MarcaModel(
          id: 3,
          nome: 'Mizuno',
          slogan: 'Reach beyound',
          imagem: 'images/mizuno.jpg',
          conteudo: 'MIZUNO, é uma empresa japonesa de equipamentos esportivos, situada em Osaka, foi criada em 1906 por Rihachi Mizuno. No Brasil, a fabricação e representação dos produtos da marca é concedida à São Paulo Alpargatas S/A, desde 1995.A Mizuno é patrocinadora oficial da Confederação Brasileira de Judô (CBJ).'
        ),
      );
      marcas.add(
        new MarcaModel(
          id: 4,
          nome: 'Nike',
          slogan: 'Just do it',
          imagem: 'images/nike.jpg',
          conteudo: 'NIKE, é uma empresa estadunidense de calçados, roupas, e acessórios fundada em 1964 por Bill Bowerman e Philip Knight. Sua sede fica no estado de Oregon, nos EUA. É a marca de roupas mais valiosa do mundo, a empresa tirou o seu nome da deusa grega da vitória, Nice'
        ),
      );
      marcas.add(
        new MarcaModel(
          id: 5,
          nome: 'Puma',
          slogan: 'Forever faster',
          imagem: 'images/puma.jpg',
          conteudo: 'PUMA, é uma empresa alemã, fundada em 1948 pelo empresário alemão Rudolf Dassier. A chuteiras Pumas, que calçavam Pelé, fizeram grande sucesso nas Copas do Mundo das décadas de 60 e 70, fazendo com que a empresa entrasse de vez no mercado de fornecedores de materiais de esporte. O ano de 1994 talvez seja o mais importante para fábrica, já que foi primeiro em que teve um salvo positivo desde sua entrada no Mercado de Ações'
        ),
      );
      marcas.add(
        new MarcaModel(
          id: 6,
          nome: 'Under Armour',
          slogan: 'I will',
          imagem: 'images/under.jpg',
          conteudo: 'UNDER ARMOUR, é uma empresa fundada por Lengton Parruque dos EUA, sede localizada em Baltimore, Maryland, começou a operar em 1996 e possui atualmente mais de quinze mil pontos de venda no mundo'
        ),
      );
    }

    return new Future.value(marcas);
  }
}
