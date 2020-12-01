import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UbicacionIncasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ubicacion : Imperio Inca'),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          _cardImage(),
          SizedBox(
            height: 15,
          ),
          _cardText(),
          SizedBox(
            height: 15,
          ),
          _cardImage2(),
          SizedBox(
            height: 15,
          ),
          _cardText2(),
        ],
      ),
    );
  }

  Widget _cardImage() {
    final card = Container(
        child: Column(children: [
      FadeInImage(
        placeholder: AssetImage('assets/loading.gif'),
        image: NetworkImage(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Tawantinsuyu_%28orthographic_projection%29.svg/549px-Tawantinsuyu_%28orthographic_projection%29.svg.png'),
        height: 350,
        fit: BoxFit.cover,
      ),
      Container(
        child: Text(
          'Máxima extensión del imperio al finalizar el gobierno del Inca Huayna Cápac',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 10,
            color: Colors.black54,
          ),
        ),
        padding: EdgeInsets.all(10),
      ),
    ]));

    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: card,
      ),
    );
  }

  Widget _cardImage2() {
    final card = Container(
        child: Column(children: [
      Text(
        'Pachacútec',
        style: TextStyle(
          fontSize: 25,
          color: Colors.black,
        ),
      ),
      Divider(),
      FadeInImage(
        placeholder: AssetImage('assets/loading.gif'),
        image: NetworkImage(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/PachacutecIXinca.jpg/245px-PachacutecIXinca.jpg'),
        height: 350,
        fit: BoxFit.cover,
      ),
      Container(
        child: Text(
          '«Inca del cambio del rumbo de la tierra, digno de estima», Cuzco, ca. 1400-Cuzco, ca. 1471)',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 10,
            color: Colors.black54,
          ),
        ),
        padding: EdgeInsets.all(10),
      ),
    ]));

    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: card,
      ),
    );
  }

  Widget _cardText() {
    return Card(
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Text(
              'El imperio incaico, que ocupó un vasto territorio de América del Sur, que comprende los actuales o partes de los territorios de las Repúblicas de Perú, Ecuador, occidente de Bolivia, norte de Chile, el extremo sur-occidental de Colombia y el noroeste de Argentina.',
              textAlign: TextAlign.justify,
              style: GoogleFonts.roboto(fontSize: 20)),
        ));
  }

  Widget _cardText2() {
    return Card(
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Text(
              'Pachacútec es el primer inca del cual se encuentran referencias históricas que corroboran su existencia, por cual es reconocido como el "primer inca histórico". ' +
                  'Tiene una importancia mucho mayor que la de solo un personaje, llegando a representar el inicio de toda una época de transición y reestructuración para la sociedad inca.',
              textAlign: TextAlign.justify,
              style: GoogleFonts.roboto(fontSize: 20)),
        ));
  }
}
