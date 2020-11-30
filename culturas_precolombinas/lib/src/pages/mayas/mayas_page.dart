import 'package:flutter/material.dart';

class MayasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo Sobre : Imperio Maya'),
      ),
      body: _lista(context),
    );
  }

  Widget _lista(context) {
    return ListView(
      children: _listaItems(context),
    );
  }

  List<Widget> _listaItems(BuildContext context) {
    final List<Widget> opciones = [];
    opciones.add(_ubicacion(context));
    opciones.add(Divider());
    return opciones;
  }

  ListTile _ubicacion(BuildContext context) {
    return ListTile(
      title: Text('Ubicacion Geografica'),
      leading: Icon(Icons.location_pin),
      trailing: Icon(
        Icons.keyboard_arrow_right_outlined,
        color: Colors.blue,
      ),
      onTap: () {
        Navigator.pushNamed(context, 'ubicacion_mayas');
      },
    );
  }
}
