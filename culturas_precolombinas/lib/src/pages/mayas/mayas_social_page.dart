import 'package:flutter/material.dart';

class SocialMayasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sociedad: Imperio Maya'),
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
    opciones.add(Text(
      'PIRAMIDE SOCIAL',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30,
        foreground: Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2
          ..color = Color(0xFF512DA8),
      ),
    ));
    opciones.add(Divider());
    opciones.add(_firstLevel(context));
    opciones.add(_secondLevel(context));
    opciones.add(_thirdLevel(context));
    opciones.add(_fourthLevel(context));
    opciones.add(_fifthLevel(context));
    return opciones;
  }

  Widget _firstLevel(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 140, right: 140),
      height: 100,
      child: RaisedButton(
        onPressed: () => _showAlert1(context),
        child: Text('Halach Uinic'),
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }

  Widget _secondLevel(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 110, right: 110),
      height: 100,
      child: RaisedButton(
        onPressed: () => _showAlert2(context),
        child: Text('Sacerdotes'),
        color: Colors.green,
        textColor: Colors.white,
      ),
    );
  }

  Widget _thirdLevel(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 80, right: 80),
      height: 100,
      child: RaisedButton(
        onPressed: () => _showAlert3(context),
        child: Text('Nobles'),
        color: Colors.amber,
        textColor: Colors.white,
      ),
    );
  }

  Widget _fourthLevel(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 50, right: 50),
      height: 100,
      child: RaisedButton(
        onPressed: () => _showAlert4(context),
        child: Text('Pueblo'),
        color: Colors.orange,
        textColor: Colors.white,
      ),
    );
  }

  Widget _fifthLevel(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      height: 100,
      child: RaisedButton(
        onPressed: () => _showAlert5(context),
        child: Text('Esclavos'),
        color: Colors.red,
        textColor: Colors.white,
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
                  'https://www.cultura10.org/wp-content/uploads/2018/03/Organizaci%C3%B3n-pol%C3%ADtica-de-los-mayas.png.webp'),
              fit: BoxFit.cover,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    'El Halach Uinic era el señor de una ciudad-Estado maya. Era un cargo hereditario que se trasmitía al hijo mayor. Su principal símbolo de poder era el "cetro de maniquí", un bastón ceremonial que tenía la figura de K´awiil, el dios de la vida.'),
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
                  'https://pueblosoriginarios.com/recursos/colecciones/maya/imagenes/copal.jpg'),
              fit: BoxFit.cover,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    'Los Sacerdotes Mayas es un grupo social índígena que presidía y preside rituales públicos, tales como sacrificios, ofrendas, actividades shamánicas de adivinación, conmemoraciones o fiestas calendáricas.'),
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
                  'https://lh4.ggpht.com/_uheNlUAGBA8/TMTLpiJ5RwI/AAAAAAAADGQ/u6BH77UoN7A/civilizacion%20maya%20sociedad.jpg'),
              fit: BoxFit.cover,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    'Nobles y guerreros constituían un tercer sector de importancia. Los primeros haciendo de funcionarios y administradores de la ciu­dad-Estado. Los segundos, ocu­pados en la defensa y expansión. Los comerciantes mantenían estrecha relación con los sectores más acomo­dados y compartían buena parte de sus costumbres.'),
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
                  'https://profesorapaulina.cl/images/Ensayos/cuarto_sociales/mayas1/images.jpg'),
              fit: BoxFit.cover,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    'Los artesanos y los campesinos constituían la clase inferior, llamada ah chembal uinicoob. Ellos debían trabajar y además pagar tributos a los altos dignatarios civiles y religiosos. Por lo general, los campesinos se encontraban en las selvas, agrupados en pequeñas comunidades. Vivían a bastante distancia del centro de las ciudades, pero cerca de los terrenos de cultivo.'),
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
                  'https://static4.depositphotos.com/1011850/285/v/950/depositphotos_2854248-stock-illustration-mayan-sacrifices.jpg'),
              fit: BoxFit.cover,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    ' Los esclavos constituían el último eslabón en esta sociedad y adquirían su condición por nacimiento, robo, haber caído prisioneros en la guerra, ser huérfanos o haber sido comprados.'),
              ],
            ),
          );
        });
  }
}
