import 'package:flutter/material.dart';

class MitologiaAztecasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Mitologia: Imperio Azteca'),
        ),
        body: _lista(context));
  }

  Widget _lista(context) {
    return ListView(
      children: _listaItems(context),
    );
  }

  List<Widget> _listaItems(BuildContext context) {
    final List<Widget> opciones = [];
    opciones.add(Divider(color: Colors.white));
    opciones.add(_titleDioses(context));
    opciones.add(Divider(color: Colors.white));
    opciones.add(_button1(context));
    opciones.add(Divider(color: Colors.white));
    opciones.add(_button2(context));
    opciones.add(Divider(color: Colors.white));
    opciones.add(_button3(context));
    opciones.add(Divider(color: Colors.white));
    opciones.add(Divider(color: Colors.white));
    opciones.add(_titleMito(context));
    opciones.add(_mythCard(context));
    return opciones;
  }

  Widget _button1(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 60, right: 60),
      height: 100,
      child: MaterialButton(
          onPressed: () => _showAlert1(context),
          child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/tezcatlipoca.png'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.green[100].withOpacity(0.2), BlendMode.dstATop)),
              ),
              child: Center(
                child: Text(
                  'Tezcatlipoca',
                  style: TextStyle(
                    fontSize: 30,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 2
                      ..color = Color(Colors.black54.value),
                  ),
                ),
              )),
          color: Colors.green[100]),
    );
  }

  Widget _button2(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 60, right: 60),
      height: 100,
      child: MaterialButton(
          onPressed: () => _showAlert2(context),
          child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/tlaloc.png"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.blue[100].withOpacity(0.2), BlendMode.dstATop)),
              ),
              child: Center(
                child: Text(
                  'Tlaloc',
                  style: TextStyle(
                    fontSize: 30,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 2
                      ..color = Color(Colors.black54.value),
                  ),
                ),
              )),
          color: Colors.blue[100]),
    );
  }

  Widget _button3(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 60, right: 60),
      height: 100,
      child: MaterialButton(
          onPressed: () => _showAlert3(context),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/aztecas.png"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.red[50].withOpacity(0.2), BlendMode.dstATop)),
            ),
            child: Center(
              child: Text(
                'Quetzalcóatl',
                style: TextStyle(
                  fontSize: 30,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2
                    ..color = Color(Colors.black54.value),
                ),
              ),
            ),
          ),
          color: Colors.red[50]),
    );
  }

  Widget _titleMito(BuildContext context) {
    return Text(
      'Mito: Quetzalcóatl borracho',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30,
        foreground: Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2
          ..color = Color(0xFF512DA8),
      ),
    );
  }

  Widget _titleDioses(BuildContext context) {
    return Text(
      'Dioses principales',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30,
        foreground: Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2
          ..color = Color(0xFF512DA8),
      ),
    );
  }

  Widget _mythCard(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 50, right: 50),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  "assets/quetzacoalborracho.jpg",
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                ),
              ),
              Divider(color: Colors.white),
              Container(
                padding: EdgeInsets.all(15),
                child: Text(
                    "Uno de los dioses más populares y virtuosos fue Quetzalcóatl dentro de los mitos aztecas. A pesar de su estatus, el dios Quetzalcóatl también podría haber sufrido la peor mañana del mundo.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16)),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Text(
                    "Una noche, su hermano y rival Tezcatlipoca consiguió que Quetzalcóatl se bebiera ridículamente del pulque, la bebida de los aztecas.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16)),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Text(
                    "Cuando se despertó a la mañana siguiente, Quetzalcóatl estaba comprensiblemente molesto y avergonzado por el giro de los acontecimientos, por lo que zarpó en una balsa de serpientes. Los aztecas creían que Quetzalcóatl volvería a ellos algún día, por lo que anticiparon su segunda venida.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16)),
              ),
            ]),
      ),
    );
  }

  void _showAlert1(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/Tezcatlipoca.svg/800px-Tezcatlipoca.svg.png'),
              fit: BoxFit.cover,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Tezcatlipoca es un dios creador y destructor, contraparte de Quetzalcóatl y algunos hasta creen que fue más importante que aquel, señor del fuego y de la muerte, dios del cielo nocturno, se le relaciona con el mal y la destrucción.',
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          );
        });
  }

  void _showAlert2(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Tlaloc_glyph.svg/800px-Tlaloc_glyph.svg.png'),
              fit: BoxFit.cover,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Conocido como dios del rayo, se consideraba al mismo tiempo como el señor del poderoso elemento del agua, lo que se reflejaba en la fertilidad y abundancia de las cosechas, ya que la región se caracterizaba por ser un pueblo agricultor.\n\nTodos los pueblos de la época, imploraban al dios Tláloc su intervención para que fortaleciera las nubes y pudieran desde el cielo descender agua en abundancia para obtener excelentes cosechas para el sustento de los pueblos.',
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          );
        });
  }

  void _showAlert3(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Quetzalcoatl.svg/800px-Quetzalcoatl.svg.png'),
              fit: BoxFit.cover,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Quetzalcóatl, la mítica serpiente emplumada que era el dios más poderoso para los teotihuacanos, mexicas, toltecas, olmecas y mayas. Esta deidad representa la dualidad entre la condición física del hombre, por su cuerpo de serpiente, y su parte espiritual, por sus plumas.\n\nQuetzalcóatl, según la mitología mexica, tenía un gemelo malvado, el dios de la oscuridad, llamado Tezcatlipoca, y mientras Quetzalcóatl era el creador del mundo, Tezcatlipoca lo destruía',
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          );
        });
  }

  void _showAlert4(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: NetworkImage(
                  'https://sites.google.com/site/wikishimikamu/_/rsrc/1496680783555/hatun-runa/1131.jpg?height=320&width=275'),
              fit: BoxFit.cover,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Eran pescadores, pastores, artesanos, y agricultores de lo pueblos dominados que, junto con cultivar sus propias tierras, debían trabajar gratuitamente las de los nobles a modo de tributo. Estaban organizados en Ayllus o comunidades, pagaban tributo con un sistema de turnos de trabajo llamado MITA.',
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          );
        });
  }
}
