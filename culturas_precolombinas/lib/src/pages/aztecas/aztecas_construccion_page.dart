import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConstruccionAztecasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Construcciones : Imperio Azteca'),
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
          _cardImage2(),
          SizedBox(
            height: 15,
          ),
          _cardImage3(),
          SizedBox(
            height: 15,
          ),
          _cardImage4(),
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
              'Sus principales construcciones fueron los templos, las pirámides, los palacios y otros edificios administrativos. Los templos se edificaron en la parte alta de las pirámides y fueron construidos a base de piedra y tierra.',
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
            'https://www.lifeder.com/wp-content/uploads/2018/07/Templo-Mayor-Tenochtitlan-e1531236569754.jpg'),
        height: 350,
        fit: BoxFit.cover,
      ),
      Container(
        child: Text(
          'El Templo Mayor',
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
            'https://www.lifeder.com/wp-content/uploads/2018/07/Gran_Pir%C3%A1mide_de_Cholula_Puebla_M%C3%A9xico-e1531236700324.jpg'),
        height: 350,
        fit: BoxFit.cover,
      ),
      Container(
        child: Text(
          'La Gran Pirámide de Cholula',
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

  Widget _cardImage3() {
    final card = Container(
        child: Column(children: [
      FadeInImage(
        placeholder: AssetImage('assets/loading.gif'),
        image: NetworkImage(
            'https://www.lifeder.com/wp-content/uploads/2018/07/Pir%C3%A1mide_de_Tenayuca-e1531237008320.jpg'),
        height: 350,
        fit: BoxFit.cover,
      ),
      Container(
        child: Text(
          'Pirámide de Tenayuca',
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

  Widget _cardImage4() {
    final card = Container(
        child: Column(children: [
      FadeInImage(
        placeholder: AssetImage('assets/loading.gif'),
        image: NetworkImage(
            'https://www.lifeder.com/wp-content/uploads/2018/07/Piramide-redonda-Campo-Col.jpg'),
        height: 350,
        fit: BoxFit.cover,
      ),
      Container(
        child: Text(
          'Las pirámides redondas',
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
