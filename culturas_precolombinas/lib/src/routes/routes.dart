import 'package:flutter/material.dart';

//Propias
import 'package:culturas_precolombinas/src/pages/home_page.dart';

// Incas
import 'package:culturas_precolombinas/src/pages/incas/incas_page.dart';
import 'package:culturas_precolombinas/src/pages/incas/incas_ubicacion_page.dart';
import 'package:culturas_precolombinas/src/pages/incas/incas_construccion_page.dart';
import 'package:culturas_precolombinas/src/pages/incas/incas_social_page.dart';
import 'package:culturas_precolombinas/src/pages/incas/incas_reto_page.dart';
import 'package:culturas_precolombinas/src/pages/incas/incas_mitologia_page.dart';

// Aztecas
import 'package:culturas_precolombinas/src/pages/aztecas/aztecas_page.dart';
import 'package:culturas_precolombinas/src/pages/aztecas/aztecas_ubicacion_page.dart';
import 'package:culturas_precolombinas/src/pages/aztecas/aztecas_construccion_page.dart';
import 'package:culturas_precolombinas/src/pages/aztecas/aztecas_social_page.dart';
import 'package:culturas_precolombinas/src/pages/aztecas/aztecas_reto_page.dart';
import 'package:culturas_precolombinas/src/pages/aztecas/aztecas_mitologia_page.dart';
// Mayas
import 'package:culturas_precolombinas/src/pages/mayas/mayas_page.dart';
import 'package:culturas_precolombinas/src/pages/mayas/mayas_ubicacion_page.dart';
import 'package:culturas_precolombinas/src/pages/mayas/mayas_construccion_page.dart';
import 'package:culturas_precolombinas/src/pages/mayas/mayas_social_page.dart';
import 'package:culturas_precolombinas/src/pages/mayas/mayas_reto_page.dart';
import 'package:culturas_precolombinas/src/pages/mayas/mayas_mitologia_page.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'incas': (BuildContext context) => IncasPage(),
    'aztecas': (BuildContext context) => AztecasPage(),
    'mayas': (BuildContext context) => MayasPage(),
    'ubicacion_incas': (BuildContext context) => UbicacionIncasPage(),
    'ubicacion_aztecas': (BuildContext context) => UbicacionAztecasPage(),
    'ubicacion_mayas': (BuildContext context) => UbicacionMayasPage(),
    'construccion_incas': (BuildContext context) => ConstruccionIncasPage(),
    'construccion_aztecas': (BuildContext context) => ConstruccionAztecasPage(),
    'construccion_mayas': (BuildContext context) => ConstruccionMayasPage(),
    'social_incas': (BuildContext context) => SocialIncasPage(),
    'social_aztecas': (BuildContext context) => SocialAztecasPage(),
    'social_mayas': (BuildContext context) => SocialMayasPage(),
    'reto_aztecas':(BuildContext context) => AztecasRetoPage(),
    'reto_incas':(BuildContext context) => IncasRetoPage(),
    'reto_mayas':(BuildContext context) => MayasRetoPage(),
    'mitologia_incas': (BuildContext context) => MitologiaIncasPage(),
    'mitologia_aztecas': (BuildContext context) => MitologiaAztecasPage(),
    'mitologia_mayas': (BuildContext context) => MitologiaMayasPage(),
  };
}
