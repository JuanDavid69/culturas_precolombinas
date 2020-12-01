import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UbicacionAztecasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ubicacion : Imperio Azteca'),
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
            'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Aztec_Empire_%28orthographic_projection%29.svg/550px-Aztec_Empire_%28orthographic_projection%29.svg.png'),
        height: 350,
        fit: BoxFit.cover,
      ),
      Container(
        child: Text(
          'Territorios tributarios de la Triple Alianza en la máxima expansión del Imperio azteca (1521)',
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
        'Moctezuma I el Grande',
        style: TextStyle(
          fontSize: 25,
          color: Colors.black,
        ),
      ),
      Divider(),
      FadeInImage(
        placeholder: AssetImage('assets/loading.gif'),
        image: NetworkImage(
            'https://content.wdl.org/6730/thumbnail/1404323908/616x510.jpg'),
        height: 350,
        fit: BoxFit.cover,
      ),
      Container(
        child: Text(
          'Moctezuma I Ilhuicamina según una ilustración del Manuscrito Tovar',
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
              'Los aztecas se establecieron en México Tenochtitlan en el centro del Valle de México, ' +
                  'expandiendo su control hacia ciudades-estado ubicadas en los actuales estados de México, ' +
                  'Morelos, Veracruz, Guerrero, Puebla, Oaxaca; la costa de Chiapas, Hidalgo, y parte de Guatemala.',
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
              '(Tenochtitlán, 1390 - 1469) Quinto emperador azteca (1440-1469). Hijo del emperador Huitzilihuitl II, en 1417 asumió la dirección del ejército azteca, cargo que mantendría durante los reinados de Chimalpopoca (1417-1427) e Itzcóatl (1427-1440).',
              textAlign: TextAlign.justify,
              style: GoogleFonts.roboto(fontSize: 20)),
        ));
  }
}
