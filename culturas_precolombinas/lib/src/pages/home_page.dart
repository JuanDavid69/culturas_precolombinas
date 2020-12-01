import 'package:flutter/material.dart';

//Propias
import 'package:culturas_precolombinas/providers/menu_provider2.dart';
import 'package:culturas_precolombinas/src/utils/color_string_utils.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  double _height_incas = 235;
  double _height_aztecas = 235;
  double _height_mayas = 235;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(7);
  String _actualContainer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cultura Precolombina'),
        ),
        body: _lista());
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return Center(
          child: Column(
            children: _listaItems(snapshot.data, context),
          ),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
    data.forEach((element) {
      final widgetTemporal = AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.fastLinearToSlowEaseIn,
          width: 365,
          height: getHeight(element),
          decoration: BoxDecoration(
              color: getColor(element['color']), borderRadius: _borderRadius),
          child: _actualContainer == element['ruta']
              ? ListView(
                  children: [_columna(element)],
                )
              : Row(
                  children: [_button(element)],
                ));
      opciones.add(Divider(
        color: Colors.white,
      ));
      opciones.add(widgetTemporal);
    });
    return opciones;
  }

  FlatButton _button(dynamic element) {
    String _image = element['image'];
    String _titulo = element['titulo'];
    return FlatButton(
        child: Row(
          children: [
            Container(
              child: new Image.asset(
                'assets/$_image',
                fit: BoxFit.cover,
                width: element['image_width'].toDouble(),
              ),
            ),
            Text(
              '$_titulo',
              style: TextStyle(
                fontSize: 25,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 1
                  ..color = Colors.blueGrey[700],
              ),
            ),
          ],
        ),
        onPressed: () {
          if (element['ruta'] == 'incas')
            _animarContainerIncas(element);
          else if (element['ruta'] == 'aztecas')
            _animarContainerAztecas(element);
          else if (element['ruta'] == 'mayas') _animarContainerMayas(element);
        });
  }

  Column _columna(dynamic element) {
    String _descripcion = element['descripcion'];
    String _titulo = element['titulo'];
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          child: Text(
            '$_titulo',
            style: TextStyle(
              fontSize: 30,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 1
                ..color = Colors.blueGrey[700],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          width: 365,
          child: new Column(
            children: <Widget>[
              new Text(
                "$_descripcion",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 235, top: 30),
          child: FloatingActionButton(
              backgroundColor: Color(0xFF512DA8),
              onPressed: () {
                Navigator.pushNamed(context, element['ruta']);
              },
              child: Icon(Icons.arrow_forward_ios_sharp, color: Colors.amber)),
        )
      ],
    );
  }

//////////////////////////////////// INCAS /////////////////////////////////////////
  void _animarContainerIncas(element) {
    _actualContainer = 'incas';
    _height_incas = 470;
    _height_aztecas = 117.5;
    _height_mayas = 117.5;
    setState(() {});
  }

//////////////////////////////////// AZTECAS /////////////////////////////////////////

  void _animarContainerAztecas(element) {
    _actualContainer = 'aztecas';
    _height_incas = 117.5;
    _height_aztecas = 470;
    _height_mayas = 117.5;
    setState(() {});
  }

//////////////////////////////////// MAYAS /////////////////////////////////////////

  void _animarContainerMayas(element) {
    _actualContainer = 'mayas';
    _height_incas = 117.5;
    _height_aztecas = 117.5;
    _height_mayas = 470;
    setState(() {});
  }

  double getHeight(element) {
    if (element['ruta'] == 'incas')
      return _height_incas;
    else if (element['ruta'] == 'aztecas')
      return _height_aztecas;
    else if (element['ruta'] == 'mayas')
      return _height_mayas;
    else
      return 100;
  }
}
