import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Alert Page'),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () => _showAlert(context),
            child: Text('Ventana Alerta'),
            color: Colors.orangeAccent,
            textColor: Colors.white,
            shape: StadiumBorder(),
          ),
        ));
  }

  void _showAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text('DONDE TE SENTASTE? !!!'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('NO ME LA CONTÉS'),
                FlutterLogo(
                  size: 70,
                )
              ],
            ),
            actions: [
              FlatButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Cancelar')),
              FlatButton(onPressed: () {}, child: Text('Ok'))
            ],
          );
        });
  }
}
