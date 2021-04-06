import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  //const CardPage({Key key}) : super(key: key);

  final url = 'https://hdwallpaperim.com/wp-content/uploads/2017/08/22/377607-space-planet-landscape-universe-night_sky.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          _cardTipo1(),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      color: Colors.orangeAccent,
      shadowColor: Colors.grey,
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('Primera Card'),
            subtitle: Text(
                'Esto es un texto generado para hacer un subtitulo e identifcar las propiedades que tienen los listilte'),
            leading: Icon(Icons.follow_the_signs_rounded),
          ),
          Row( 
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: (){}, child: Text('Aceptar')),
              FlatButton(onPressed: (){}, child: Text('Cancelar'),)
            ],
          )
        ],
      ),
      
    );
  }

  Widget _cardTipo2() {
    return Card(
      child: Column( 
        children: <Widget>[
        //FadeInImage(placeholder: placeholder, image: image)
        
        FadeInImage(
          placeholder: AssetImage('assets/1.gif'),
           image: NetworkImage(url),
           fadeInDuration: Duration(milliseconds: 200),
           height: 300.0,
           fit: BoxFit.fill,
           )
        

        /*Image(image: NetworkImage(url)),
        Container(
          child: Text('Esto es un texto'),

          )*/
      ],
      )
    );
  }
}
