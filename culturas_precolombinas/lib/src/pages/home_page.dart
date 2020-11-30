import 'package:flutter/material.dart';

//Propias
import 'package:culturas_precolombinas/providers/menu_provider.dart';
import 'package:culturas_precolombinas/src/utils/icons_string_utils.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
    data.forEach((element) {
      final widgetTemporal = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: Icon(
          Icons.keyboard_arrow_right_outlined,
          color: Colors.indigoAccent,
        ),
        onTap: () {
          Navigator.pushNamed(context, element['ruta']);
        },
      );
      opciones.add(widgetTemporal);
      opciones.add(Divider());
    });
    return opciones;
  }
}
