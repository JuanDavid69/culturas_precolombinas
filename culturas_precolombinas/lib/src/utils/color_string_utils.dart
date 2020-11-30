import 'package:flutter/material.dart';

final _colors = <String, Color>{
  'red': Colors.red[200],
  'green': Colors.green[200],
  'amber': Colors.amber[200]
};

Color getColor(String nombreColor) {
  return _colors[nombreColor];
}
