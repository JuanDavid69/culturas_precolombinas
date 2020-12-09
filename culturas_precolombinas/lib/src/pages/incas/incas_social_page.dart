import 'package:flutter/material.dart';

class SocialIncasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sociedad: Imperio Inca'),
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
    opciones.add(_sixthLevel(context));
    opciones.add(_seventhLevel(context));
    return opciones;
  }

  Widget _firstLevel(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 140, right: 140),
      height: 100,
      child: RaisedButton(
        onPressed: () => _showAlert1(context),
        child: Text('Sapa Inca'),
        color: Colors.green[300],
        textColor: Colors.white,
      ),
    );
  }

  Widget _secondLevel(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 120, right: 120),
      height: 100,
      child: RaisedButton(
        onPressed: () => _showAlert2(context),
        child: Text('Panaca'),
        color: Colors.blue[200],
        textColor: Colors.white,
      ),
    );
  }

  Widget _thirdLevel(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 100, right: 100),
      height: 100,
      child: RaisedButton(
        onPressed: () => _showAlert3(context),
        child: Text('Curacas'),
        color: Colors.teal[300],
        textColor: Colors.white,
      ),
    );
  }

  Widget _fourthLevel(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 80, right: 80),
      height: 100,
      child: RaisedButton(
        onPressed: () => _showAlert4(context),
        child: Text('Hatunrunas'),
        color: Colors.red[400],
        textColor: Colors.white,
      ),
    );
  }

  Widget _fifthLevel(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 60, right: 60),
      height: 100,
      child: RaisedButton(
        onPressed: () => _showAlert5(context),
        child: Text('Mitimaes o Mitmas'),
        color: Colors.pinkAccent[100],
        textColor: Colors.white,
      ),
    );
  }

  Widget _sixthLevel(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 40, right: 40),
      height: 100,
      child: RaisedButton(
        onPressed: () => _showAlert6(context),
        child: Text('Yanaconas'),
        color: Colors.lightGreen,
        textColor: Colors.white,
      ),
    );
  }

  Widget _seventhLevel(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      height: 100,
      child: RaisedButton(
        onPressed: () => _showAlert7(context),
        child: Text('Piñacunas o Piñas'),
        color: Colors.yellowAccent[700],
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
                  'https://tardecroaste.files.wordpress.com/2013/11/sain.png?w=640'),
              fit: BoxFit.cover,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Gobernante con derecho divino junto con la nobleza constituían el grupo privilegiado, el resto de la población integraba el grupo no privilegiado.',
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
                  'https://esarte.pe/wp-content/uploads/2018/10/GRAN-PANAKA-%C3%93leo-en-tela-110x90cms..jpg'),
              fit: BoxFit.cover,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Una panaca o panaka era aquella familia formada por toda la descendencia de un monarca, excluyendo de ella al hijo que sucedía en el mando. Entre otras funciones que ocupaban las panacas estaban las de encargarse de mantener el recuerdo del inca fallecido, de realizar las ceremonias en su nombre y de cuidar de sus bienes y alianzas hechas en vida. Las panacas tenían gran influencia en la decisión del nombramiento de los sucesores al cargo inca.',
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
                  'https://i.pinimg.com/originals/f8/e7/4d/f8e74d02a9b53d28365cb3da13ee036d.jpg'),
              fit: BoxFit.cover,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Eran nobles de carácter local, jefe político y administrativo del ayllu, quién organizaba las tareas agrícolas,  hacía de juez  y consejero, administraba los bienes,  la mita, los rituales y ceremonias.',
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
