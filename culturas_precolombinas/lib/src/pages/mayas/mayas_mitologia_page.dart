import 'package:flutter/material.dart';

class MitologiaMayasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Mitologia: Imperio Maya'),
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
                    image: AssetImage('assets/simbolohunabku.png'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.white30.withOpacity(0.2), BlendMode.dstATop)),
              ),
              child: Center(
                child: Text(
                  'Hunab Ku',
                  style: TextStyle(
                    fontSize: 30,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 2
                      ..color = Color(Colors.black87.value),
                  ),
                ),
              )),
          color: Colors.white30),
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
                    image: AssetImage("assets/itzamna.png"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.blue[50].withOpacity(0.2), BlendMode.dstATop)),
              ),
              child: Center(
                child: Text(
                  'Itzamná',
                  style: TextStyle(
                    fontSize: 30,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 2
                      ..color = Color(Colors.black54.value),
                  ),
                ),
              )),
          color: Colors.blue[50]),
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
                  image: AssetImage("assets/yunkaax.png"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.green[50].withOpacity(0.2), BlendMode.dstATop)),
            ),
            child: Center(
              child: Text(
                'Yun Kaax',
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
          color: Colors.green[50]),
    );
  }

  Widget _titleMito(BuildContext context) {
    return Text(
      'Mito: Dziu y el maiz',
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
                  "assets/diziu.jpg",
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                ),
              ),
              Divider(color: Colors.white),
              Container(
                padding: EdgeInsets.all(15),
                child: Text(
                    "La leyenda se centra en Dziú, un pájaro que fue reconocido por su valentía. Por responder a las órdenes de Yuum Chaac, el Dios de la lluvia, arriesgó su vida para salvar una semilla de maíz de un campo incendiado, ya que esta semilla era considerada indispensable para la vida.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16)),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Text(
                    "Como resultado de haberse adentrado en el incendio, Dziú quedó con los ojos rojos y el cuerpo gris.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16)),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Text(
                    "Fue reconocido por Yuum Chaac y todos los pájaros, por lo que a partir de entonces, Dziú podría despreocuparse de la construcción de nidos para sus crías, pues podría poner sus huevos en los de cualquier pájaro, y serían cuidados por ellos como si fuesen propios.",
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
                  'https://d36tnp772eyphs.cloudfront.net/blogs/2/2017/07/Hunab-Ku.jpg'),
              fit: BoxFit.cover,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Hunab Ku en la religión maya era muy importante pues lo consideraban el corazón que coordinaba todo el universo, era la fuente de energía que conectaba a todo ser vivo y quien transmitía la información de todo. Así mismo, los mayas creían que este dios se manifestaba a través de ondas las cuales podrían ser de luz, sonido, energía, pensamiento y amor.',
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
                  'https://3.bp.blogspot.com/-O2NoO_fOg1E/VpDokWcrm4I/AAAAAAAAnUk/umDrJA75Djs/s1600/ITZAMAN.png '),
              fit: BoxFit.cover,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Zamná también conocido en la cultura maya como Itzamná luego de su deificación, fue el hijo de Hunab Ku, quien era considerado como el dios único y verdadero, el creador. Entre los dioses mayas a Itzamná se le conoce como dios de la sabiduría, dios del cielo, la noche y el día; se le considera espíritu universal de vida que anima al caos para que haya creación.',
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
                  'https://simbologiadelmundo.com/wp-content/uploads/2016/06/Yun-Kaax-1.png'),
              fit: BoxFit.cover,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Yum Kaax, el dios del maíz era el gran y poderosos dios con el que el pueblo maya respondía su gran inclinación por trabajar la tierra. Era adorado con gran determinación, quien por lo mismo era llamado el patrono de la agricultura. Se trata entonces de un popular dios maya considerado una especie de deidad vegetal que también cumplía con la labor de garantizar el bienestar de los animales.',
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
