import 'package:flutter/material.dart';

//Propias
import 'package:culturas_precolombinas/src/routes/routes.dart';
import 'package:culturas_precolombinas/src/pages/not_found_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColorDark: Color(0xFF512DA8),
          primaryColor: Color(0xFF673AB7),
          accentColor: Color(0xFFFFC107)),
      title: 'Componentes flutter App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getAppRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => NotFoundPage());
      },
    );
  }
}
