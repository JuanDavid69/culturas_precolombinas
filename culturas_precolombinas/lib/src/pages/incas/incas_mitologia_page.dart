import 'package:flutter/material.dart';

class MitologiaIncasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Mitologia: Imperio Inca'),
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
                    image: AssetImage('assets/inti.png'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.amber[300].withOpacity(0.2), BlendMode.dstATop)),
              ),
              child: Center(
                child: Text(
                  'Inti',
                  style: TextStyle(
                    fontSize: 30,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 2
                      ..color = Color(Colors.black45.value),
                  ),
                ),
              )),
          color: Colors.amber[300]),
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
                    image: AssetImage("assets/pachamama.png"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.green[100].withOpacity(0.2), BlendMode.dstATop)),
              ),
              child: Center(
                child: Text(
                  'Pachamama',
                  style: TextStyle(
                    fontSize: 30,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 2
                      ..color = Color(Colors.black45.value),
                  ),
                ),
              )),
          color: Colors.green[100]),
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
                  image: AssetImage("assets/wiracocha.png"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.amber[50].withOpacity(0.2), BlendMode.dstATop)),
            ),
            child: Center(
              child: Text(
                'Wiracocha',
                style: TextStyle(
                  fontSize: 30,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2
                    ..color = Color(Colors.black45.value),
                ),
              ),
            ),
          ),
          color: Colors.amber[50]),
    );
  }

  Widget _titleMito(BuildContext context) {
    return Text(
      'Mito: Los hermanos Ayar',
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
                  "assets/hermanosayar.jpg",
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                ),
              ),
              Divider(color: Colors.white),
              Container(
                padding: EdgeInsets.all(15),
                child: Text(
                    "La leyenda relata que tras un inmenso diluvio, aparecieron cuatro jóvenes, los hermanos Ayar junto a sus esposas: Ayar Manco y Mama Ocllo, Ayar Cachi y Mama Cora, Ayar Uchu y Mama Rahua, Ayar Auca y Mama Huaco. De acuerdo a la leyenda inca el grupo iba en busca de tierras fértiles.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16)),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Text(
                    "Fue Ayar Cachi, el hermano con más fuerza y astucia, quien luego de tener una disputa con sus hermanos, fue ordenado a regresar a las cuevas de Pacarina. Sin embargo, a este le sellaron la salida con una roca y nunca más pudo salir.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16)),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Text(
                    "Los demás hermanos siguieron su camino hasta el monte Huanacauri y hallaron un ídolo de piedra al cual mostraron respeto; salvo por Ayar Uchu quien saltó a las espaldas de la estatua y quedó petrificado. Igual le ocurrió a Ayar Auca, que tras continuar el viaje también quedó convertido en piedra.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16)),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Text(
                    "Ayar Manco, fue el único hermano que llegó a Cusco y encontró buenas tierras. Tras hundir su bastón de oro, fundó el Cusco, capital del Imperio inca.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16)),
              )
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
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Sol_de_Mayo-Bandera_de_Argentina.svg/1024px-Sol_de_Mayo-Bandera_de_Argentina.svg.png'),
              fit: BoxFit.cover,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Inti es el nombre de la deidad más significativa para el pueblo, hijo de Viracocha el dios de la creación, Inti uno de los dioses Incas más venerados, por ser el que brinda la luz y el calor favorable para los cultivos. La civilización Inca relaciona al sol como el único ser que les proporcionaba la vida, pues a partir de sus bondades lograban el éxito en sus cosechas, permitiendo su existencia.',
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
                  'https://2.bp.blogspot.com/-GT6oR2EKHUc/UPGgv6EYnnI/AAAAAAAAItg/_wE-TQs2PK8/s1600/Pachamama.gif'),
              fit: BoxFit.cover,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Diosa de la tierra, a ella se le realizaban los cultos para la fertilidad de las cosechas, por tanto, las ofrendas debían de ser cuantiosas, pues de lo contrario podía hacer que las cosechas no fueran lo suficientemente abundantes.',
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
                  'https://4.bp.blogspot.com/-IEj2cvG2inI/XK9b40BTFEI/AAAAAAAAUC4/eZKBGwkkAdIGFZh6AweCqb1jwL6XlM99gCLcBGAs/s1600/Inti.png'),
              fit: BoxFit.cover,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Algunas veces también llamado Viracocha, es el gran dios, el creador en la mitología pre-Inca e Inca en la región andina de América del Sur. Viracocha era una de las deidades más importantes del Imperio Inca, era considerado el creador de todas las cosas o la sustancia de la que se da orígen a todas las cosas; estaba íntimamente relacionado con el mar.',
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

  void _showAlert5(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: NetworkImage(
                  'https://4.bp.blogspot.com/-neYpsVnfs7Y/T0u-b4hQdFI/AAAAAAAAAFg/BwHus0DmTBU/s400/inca9.jpg'),
              fit: BoxFit.cover,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Eran grupos de familias extraídas de sus comunidades por autoridades del Imperio Inca y trasladadas de pueblos leales o conquistados o viceversa para cumplir funciones económicas, sociales, culturales y políticas.',
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          );
        });
  }

  void _showAlert6(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: NetworkImage(
                  'https://2.bp.blogspot.com/-XwaJ6br1MxA/Trsl8JGpT-I/AAAAAAAABh0/6FOyfa3BpvE/s1600/yanaconas+iz.jpg'),
              fit: BoxFit.cover,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Era el nombre que recibían los esclavos de los Incas. Eran siervos, hombres y mujeres respectivamente. Ellos vendían su trabajo y no tenían vínculo con ninguna comunidad. Tenían a su cargo el cuidado del ganado de los   nobles, la pesca y estaban dedicados a la alfarería y la construcción. Esta condición de servidumbre era heredada por sus hijos.',
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          );
        });
  }

  void _showAlert7(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: NetworkImage(
                  'https://2.bp.blogspot.com/-UR6Lrlfw0e0/WWeD0eND5DI/AAAAAAAAAnI/T5HjP-rZztMJD-zOKgrjDG3IdJbJQz3dQCLcBGAs/w1200-h630-p-k-no-nu/egiptoloscautivosdelfar.jpg'),
              fit: BoxFit.cover,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Eran prisioneros de guerra peligrosos, los cuales estaban destinados al cuidado de los cocales en zonas insalubres, en condiciones muy duras, ya que eran castigados por haberse revelado al poder del Inca.',
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          );
        });
  }
}
