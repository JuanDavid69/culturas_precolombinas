import 'package:flutter/material.dart';

//Propias
import 'package:culturas_precolombinas/src/pages/alert_page.dart';
import 'package:culturas_precolombinas/src/pages/avatar.dart';
import 'package:culturas_precolombinas/src/pages/cards_page.dart';
import 'package:culturas_precolombinas/src/pages/home_page.dart';
import 'package:culturas_precolombinas/src/pages/inputs_page.dart';

// Incas
import 'package:culturas_precolombinas/src/pages/incas/incas_page.dart';
import 'package:culturas_precolombinas/src/pages/incas/incas_ubicacion_page.dart';
import 'package:culturas_precolombinas/src/pages/incas/incas_construccion_page.dart';
// Aztecas
import 'package:culturas_precolombinas/src/pages/aztecas/aztecas_page.dart';
import 'package:culturas_precolombinas/src/pages/aztecas/aztecas_ubicacion_page.dart';
import 'package:culturas_precolombinas/src/pages/aztecas/aztecas_construccion_page.dart';
// Mayas
import 'package:culturas_precolombinas/src/pages/mayas/mayas_page.dart';
import 'package:culturas_precolombinas/src/pages/mayas/mayas_ubicacion_page.dart';
import 'package:culturas_precolombinas/src/pages/mayas/mayas_construccion_page.dart';

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
    'ubicacion_incas': (BuildContext context) => UbicacionIncasPage(),
    'ubicacion_aztecas': (BuildContext context) => UbicacionAztecasPage(),
    'ubicacion_mayas': (BuildContext context) => UbicacionMayasPage(),
    'construccion_incas': (BuildContext context) => ConstruccionIncasPage(),
    'construccion_aztecas': (BuildContext context) => ConstruccionAztecasPage(),
    'construccion_mayas': (BuildContext context) => ConstruccionMayasPage(),
  };
}
