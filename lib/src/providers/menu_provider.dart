import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    //cargarData();
  }
  //Future devuelve o responde cuando la información ya esta cargada
  Future<List<dynamic>> cargarData() async {
    // Buscar como funciona el async y el future

    final resp = await rootBundle.loadString('data/menu_opt.json');

    Map dataFromJson = json.decode(resp); //Convierte un json string en map
    opciones = dataFromJson['rutas'];

    return opciones;
  }

}

final menuProvider = new _MenuProvider();
