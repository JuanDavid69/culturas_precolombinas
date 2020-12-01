import 'package:flutter/material.dart';

class AztecasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo Sobre : Imperio Azteca'),
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
    opciones.add(_construccion(context));
    opciones.add(Divider());
    opciones.add(_estructura_social(context));
    opciones.add(Divider());
    opciones.add(_mitologia(context));
    opciones.add(Divider());
    opciones.add(_reto(context));
    opciones.add(Divider());
    return opciones;
  }

  ListTile _ubicacion(BuildContext context) {
    return ListTile(
      title: Text('Ubicacion Geografica'),
      leading: Icon(Icons.location_pin),
      trailing: Icon(
        Icons.keyboard_arrow_right_outlined,
        color: Colors.deepPurple,
      ),
      onTap: () {
        Navigator.pushNamed(context, 'ubicacion_aztecas');
      },
    );
  }

  ListTile _construccion(BuildContext context) {
    return ListTile(
      title: Text('Principales Construcciones'),
      leading: Icon(Icons.apartment_outlined),
      trailing: Icon(
        Icons.keyboard_arrow_right_outlined,
        color: Colors.deepPurple,
      ),
      onTap: () {
        Navigator.pushNamed(context, 'construccion_aztecas');
      },
    );
  }

  ListTile _estructura_social(BuildContext context) {
    return ListTile(
      title: Text('Estructura Social'),
      leading: Icon(Icons.account_tree_outlined),
      trailing: Icon(
        Icons.keyboard_arrow_right_outlined,
        color: Colors.deepPurple,
      ),
      onTap: () {
        Navigator.pushNamed(context, 'social_aztecas');
      },
    );
  }

  ListTile _mitologia(BuildContext context) {
    return ListTile(
      title: Text('Mitologia'),
      leading: Icon(Icons.auto_stories),
      trailing: Icon(
        Icons.keyboard_arrow_right_outlined,
        color: Colors.deepPurple,
      ),
      onTap: () {
        Navigator.pushNamed(context, 'mitologia_aztecas');
      },
    );
  }

  ListTile _reto(BuildContext context) {
    return ListTile(
      title: Text('Reto Interactivo'),
      leading: Icon(Icons.gamepad_rounded),
      trailing: Icon(
        Icons.keyboard_arrow_right_outlined,
        color: Colors.deepPurple,
      ),
      onTap: () {
        Navigator.pushNamed(context, 'reto_aztecas');
      },
    );
  }
}
