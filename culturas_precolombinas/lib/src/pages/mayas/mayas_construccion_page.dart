import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConstruccionMayasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Construcciones : Imperio Maya'),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          _cardText(),
          SizedBox(
            height: 15,
          ),
          _cardImage1(),
          SizedBox(
            height: 15,
          ),
          _cardImage2()
        ],
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
              'Esencialmente, en la arquitectura maya se puede distinguir dos tipo de edificaciones: las pirámides escalonadas que se engalanan con frontones esculpidos que se piensa que son escenas mitológicas mayas y, asimismo, los palacios de un piso que poseían fachadas con gran ornamentación. ',
              textAlign: TextAlign.justify,
              style: GoogleFonts.roboto(fontSize: 20)),
        ));
  }

  Widget _cardImage1() {
    final card = Container(
        child: Column(children: [
      FadeInImage(
        placeholder: AssetImage('assets/loading.gif'),
        image: NetworkImage(
            'https://www.lamudi.com.mx/journal/wp-content/uploads/2017/09/templo_de_los_guerreros.jpg'),
        height: 350,
        fit: BoxFit.cover,
      ),
      Container(
        child: Text(
          'El Templo de los Guerreros',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 15, color: Colors.black, fontStyle: FontStyle.italic),
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
      FadeInImage(
        placeholder: AssetImage('assets/loading.gif'),
        image: NetworkImage(
            'https://www.lamudi.com.mx/journal/wp-content/uploads/2017/09/tikal.jpg'),
        height: 350,
        fit: BoxFit.cover,
      ),
      Container(
        child: Text(
          'La Ciudad de Tikal',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 15, color: Colors.black, fontStyle: FontStyle.italic),
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
}
