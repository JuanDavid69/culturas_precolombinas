import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider {
  List<dynamic> opciones = [];

  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/menu_culturas.json');

    Map dataJson = json.decode(resp);
    opciones = dataJson['rutas'];
    return opciones;
  }
}

final menuProvider = new _MenuProvider();
