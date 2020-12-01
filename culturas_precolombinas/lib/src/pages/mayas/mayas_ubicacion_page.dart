import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UbicacionMayasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ubicacion : Imperio Maya'),
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
            'https://culturamayahistoriasanecdotasyucatanmagico.files.wordpress.com/2014/06/distribution-jpg.png'),
        height: 350,
        fit: BoxFit.cover,
      ),
      Container(
        child: Text(
          'Extensión territorial máxima de la civilización maya',
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
        "K'inich Janaab' Pakal",
        style: TextStyle(
          fontSize: 25,
          color: Colors.black,
        ),
      ),
      Divider(),
      FadeInImage(
        placeholder: AssetImage('assets/loading.gif'),
        image: NetworkImage(
            'https://i.pinimg.com/originals/43/3a/f4/433af43984b299b6b01404f961659a10.jpg'),
        height: 350,
        fit: BoxFit.cover,
      ),
      Container(
        child: Text(
          "k'uhul B'aakal ajaw (Sagrado gobernante de B'aakal)",
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
              'La civilización maya ocupó un extenso territorio que incluía el sureste de México y el norte de América Central; abarcó toda la península de Yucatán, la totalidad de Guatemala y Belice, así como la porción occidental de Honduras y El Salvador.',
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
              "El rey maya K'inich Janaab' Pakal es probablemente el más famoso en toda la historia de la civilización maya. Tuvo el reinado más largo conocido, asumiendo el trono a los 12 años en el 615 y continuando por 68 años en el poder, hasta su muerte a los 80 años.",
              textAlign: TextAlign.justify,
              style: GoogleFonts.roboto(fontSize: 20)),
        ));
  }
}
