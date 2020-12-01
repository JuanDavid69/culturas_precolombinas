import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConstruccionIncasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Construcciones : Imperio Inca'),
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
          SizedBox(
            height: 15,
          ),
          _cardImage5(),
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
              'Los constructores lograron levantar grandes muros en los que las piedras empleadas encajaban a la perfección. Las características principales de la arquitectura desarrollada por los incas fue la sencillez de sus elementos y su solidez. Los constructores utilizaron piedras como material principal.',
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
            'https://www.kantuperutours.com/wp-content/uploads/2020/04/machupicchu-compressor.jpg'),
        height: 350,
        fit: BoxFit.cover,
      ),
      Container(
        child: Text(
          'Machu Picchu',
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
            'https://www.kantuperutours.com/wp-content/uploads/2020/04/sacsayhuaman-compressor.jpg'),
        height: 350,
        fit: BoxFit.cover,
      ),
      Container(
        child: Text(
          'Sacsayhuaman',
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
            'https://www.kantuperutours.com/wp-content/uploads/2020/04/choquequirao-compressor.jpg'),
        height: 350,
        fit: BoxFit.cover,
      ),
      Container(
        child: Text(
          'Choquequirao',
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
            'https://www.kantuperutours.com/wp-content/uploads/2020/04/pisac-compressor.jpg'),
        height: 350,
        fit: BoxFit.cover,
      ),
      Container(
        child: Text(
          'Pisac',
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

  Widget _cardImage5() {
    final card = Container(
        child: Column(children: [
      FadeInImage(
        placeholder: AssetImage('assets/loading.gif'),
        image: NetworkImage(
            'https://www.kantuperutours.com/wp-content/uploads/2020/04/ollantaytambo-compressor.jpg'),
        height: 350,
        fit: BoxFit.cover,
      ),
      Container(
        child: Text(
          'Ollantaytambo',
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
