import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 20.0),
        children: [
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _showInfo(),
          Divider(),
          _crearPassword()
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
          hintText: 'Nombre Completo',
          labelText: 'Nombre',
          helperText: 'Escriba sus nombres y apellidos',
          icon: Icon(Icons.account_circle),
          suffixIcon: Icon(Icons.local_attraction_outlined),
          counter: Text('cantidad letras ${_nombre.length}')),
      onChanged: (entrada) {
        setState(() {
          _nombre = entrada;
        });
      },
    );
  }

  Widget _showInfo() {
    return ListTile(
      title: Text('$_nombre'),
      subtitle: Text('$_email'),
    );
  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
        hintText: 'Password',
        labelText: 'Password',
        icon: Icon(Icons.lock),
        suffixIcon: Icon(Icons.lock_outline_rounded),
      ),
    );
  }

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
        hintText: 'e-mail',
        labelText: 'E-mail',
        icon: Icon(Icons.alternate_email),
        suffixIcon: Icon(Icons.email),
      ),
      onChanged: (entrada) {
        setState(() {
          _email = entrada;
        });
      },
    );
  }
}
