import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards Page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          _cardTipo1(),
          SizedBox(
            height: 15,
          ),
          _cardTipo2()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
        elevation: 50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(children: [
          ListTile(
            leading: Icon(Icons.ac_unit_rounded, color: Colors.blue),
            title: Text('CardTipo1'),
            subtitle: Text('Descripcion Card Tipo 1'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(onPressed: () {}, child: Text('Cancelar')),
              FlatButton(onPressed: () {}, child: Text('OK'))
            ],
          )
        ]));
  }

  Widget _cardTipo2() {
    final card = Container(
        child: Column(children: [
      FadeInImage(
        placeholder: AssetImage('assets/loading.gif'),
        image: NetworkImage(
            'https://free4kwallpapers.com/uploads/originals/2020/03/13/-the-great-wave-of-kanagawa-starry-night-wallpaper.jpg'),
        height: 400,
        fit: BoxFit.cover,
      ),
      Container(
        child: Text('Card para imagenes'),
        padding: EdgeInsets.all(10),
      ),
    ]));

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.blue,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 12,
                spreadRadius: 3,
                offset: Offset(2, 12.2))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: card,
      ),
    );
  }
}
