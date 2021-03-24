import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _titleSize = TextStyle(fontSize: 25);

  int _conteo = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Calculadora'),
          backgroundColor: Colors.deepPurpleAccent,
          centerTitle: true,
          brightness: Brightness.dark,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clicks:', style: _titleSize),
            Text('$_conteo', style: _titleSize),
          ],
        )),
        floatingActionButton: CrearBotones());
  }

  Widget CrearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _sumar,
        ),
        SizedBox(width: 5.0),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: _reinicio,
        ),
        SizedBox(width: 5.0),
        FloatingActionButton(
          child: Icon(Icons.gamepad_sharp),
          onPressed: _restar,
        )
      ],
    );
  }

  void _sumar() {
    setState(() => _conteo++);
  }

  void _reinicio() {
    setState(() => _conteo = 0);
  }

  void _restar() {
    setState(() => _conteo--);
  }
  
}
