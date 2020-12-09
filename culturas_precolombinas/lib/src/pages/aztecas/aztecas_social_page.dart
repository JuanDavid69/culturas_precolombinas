import 'package:flutter/material.dart';

class SocialAztecasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sociedad: Imperio Azteca'),
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
        child: Text('Tlatoani'),
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
        child: Text('Pipiltin'),
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
        child: Text('Pochtecas'),
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
        child: Text('Macehualtin'),
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
        child: Text('Tlacotín'),
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
                  'https://mxcity.mx/wp-content/uploads/2017/08/soc.jpg'),
              fit: BoxFit.cover,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    'Tlatoani, en lengua náhuatl, era el nombre dado por los pueblos mesoamericanos para referirse al gobernante de una ciudad. El tlatoani era elegido como gobernante por los grupos nobles, y él mismo provenía de una familia o dinastía de gobernantes. Esto se debía a la fuertemente estratificada estructura social de los pueblos mesoamericanos.'),
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
                  'https://mxcity.mx/wp-content/uploads/2017/08/mex.jpg'),
              fit: BoxFit.cover,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    'Después del emperador, este grupo era el que gozaba de mayores beneficios. A éste pertenecían las familias de los políticos, los sacerdotes y la clase militar. Los pipiltin eran los jerarcas de los calpullis, y además de poseer tierras, también podían contar con sirvientes. A estos nobles se les educaba para que fueran, en un futuro, funcionarios del imperio. Cuentan los códices, que este grupo gozaba del consumo del xocoatl (chocolate).'),
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
                  'https://mxcity.mx/wp-content/uploads/2017/08/soci-768x417.jpg'),
              fit: BoxFit.cover,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    'Los pochtecas eran un gremio de comerciantes viajeros que operaron durante la época del Imperio azteca. Eran gente sumamente polémica en la sociedad de su época, ya que no solo eran comerciantes, sino también espías del mismísimo tlatoani; sin mencionar de que eran una sociedad de alto prestigio que se distinguía de los mercaderes comunes o tlacemananqui.'),
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
                  'https://sites.google.com/site/civilizacionesperdidas/_/rsrc/1472876080191/civilizaciones-precolombinas/aztecas/sociedad/codex_florentina_farmer.jpg?height=420&width=383'),
              fit: BoxFit.cover,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    'La clase social azteca de los mācēhualtin eran agricultores rurales, que formaban la mayoría de los plebeyos del Imperio azteca . Los mācēhualtin trabajaban tierras que pertenecían a la unidad social de los calpolli llamada chinampas , y cada familia conservaba los derechos sobre la tierra siempre que no permaneciera en barbecho durante más de dos años. Dentro de estas tierras, los mācēhualtin rurales construyeron pequeñas presas y terrazas para aumentar su rendimiento agrícola. En estas parcelas se cultivaron cultivos comunes a la agricultura mexicana , incluidos maíz , frijoles y calabazas. Macehualtin'),
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
                  'https://mxcity.mx/wp-content/uploads/2017/08/es.jpg'),
              fit: BoxFit.cover,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    'Hasta el último lugar de la pirámide se encontraban los esclavos. La mayor parte de éstos debían convertirse en sirvientes por causa de las guerras. Pero otros pagaban una especie de castigo por haber cometido delitos o tener deudas.'),
              ],
            ),
          );
        });
  }
}
