import 'package:flutter/material.dart';

import 'package:flutter_application_1/src/providers/menu_provider.dart';
import 'package:flutter_application_1/src/utils/icon_String_util.dart';

class HomePage extends StatelessWidget {
  var opcionesByArray = [
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
    return FutureBuilder(
      future: menuProvider.cargarData(), // Recibe un metodo del tipo Future
      //initialData: [], // Data que contiene mientras espera la respuesta del future
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        print(snapshot.data);

        return ListView(
          children: _listaItems3(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems3(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((element) {
      final widgetTemp = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          print(element['ruta']);
          Navigator.pushNamed(context, '/${element['ruta']}'); 
        },
      );

      opciones..add(widgetTemp)..add(Divider());
    });

    return opciones;
  }

  _listaItems() {
    return opcionesByArray.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
              title: Text(item),
              tileColor: _randomColor(opcionesByArray.length),
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

    for (int i = 0; i < opcionesByArray.length; i++) {
      final tempWidget = ListTile(
        title: Text(opcionesByArray[i]),
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
