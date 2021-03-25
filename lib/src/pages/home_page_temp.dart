import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePageTemp extends StatelessWidget {
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
        title: Text('Hola'),
        centerTitle: true,
      ),
      body: ListView(children: _crearItems2()),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        hoverColor: Colors.orange,
        mouseCursor: MouseCursor.uncontrolled,
        onPressed: (){
          print('click');
        },
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  List<Widget> _crearItems() {
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
    print('indez' + index.toString());
    var color;
    if (index % 2 == 0) {
      color = Colors.lightBlue[100];
    } else {
      color = Colors.lightBlue[200];
    }
    return color;
  }
}
