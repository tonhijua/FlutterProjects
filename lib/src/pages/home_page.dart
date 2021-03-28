import 'package:flutter/material.dart';

import 'package:flutter_application_1/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  var opciones = [
    'opcion',
    'opcion',
    'opcion',
    'opcion',
    'opcion',
    'opcion',
    'opcion',
    'opcion',
    'opcion',
    'opcion',
    'opcion',
    'opcion',
    'opcion',
    'opcion',
    'opcion',
    'opcion',
    'opcion'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {

    menuProvider.cargarData().then((opciones) {

      print('lista');
      print(opciones);
    });

    return ListView(
      children: _crearItems2(),
    );
  }

  _listaItems() {
    return opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
              title: Text(item),
              tileColor: _randomColor(opciones.length),
              subtitle: Text('subtitle'),
              leading: Icon(Icons.add_comment),
              trailing: Icon(Icons.work_sharp),
              onTap: () {
                print(item);
              })
        ],
      );
    }).toList();
  }

  List<Widget> _crearItems2() {
    List<Widget> lista = new List<Widget>();

    for (int i = 0; i < opciones.length; i++) {
      final tempWidget = ListTile(
        title: Text(opciones[i]),
        subtitle: Text('Subtitle'),
        tileColor: _randomColor(i),
        leading: Icon(Icons.work_sharp),
        trailing: Icon(Icons.arrow_forward),
      );

      lista.add(tempWidget);
    }

    return lista;
  }

  Color _randomColor(index) {
    //print('indez' + index.toString());
    var color;
    if (index % 2 == 0) {
      color = Colors.lightBlue[200];
    } else {
      color = Colors.lightBlue[300];
    }
    return color;
  }
}
