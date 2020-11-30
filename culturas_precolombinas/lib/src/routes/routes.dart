import 'package:flutter/material.dart';

//Propias
//import 'package:culturas_precolombinas/src/pages/home_page.dart';
import 'package:culturas_precolombinas/src/pages/alert_page.dart';
import 'package:culturas_precolombinas/src/pages/avatar.dart';
import 'package:culturas_precolombinas/src/pages/cards_page.dart';
import 'package:culturas_precolombinas/src/pages/animated_container_page.dart';
import 'package:culturas_precolombinas/src/pages/inputs_page.dart';

import 'package:culturas_precolombinas/src/pages/incas_page.dart';
import 'package:culturas_precolombinas/src/pages/aztecas_page.dart';
import 'package:culturas_precolombinas/src/pages/mayas_page.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => Avatar(),
    'card': (BuildContext context) => CardPage(),
    'inputs': (BuildContext context) => InputPage(),
    'incas': (BuildContext context) => IncasPage(),
    'aztecas': (BuildContext context) => AztecasPage(),
    'mayas': (BuildContext context) => MayasPage(),
  };
}
