import 'package:flutter/material.dart' show IconData, Widget;

// Clase para pasar los datos de cada elemento del menú de los componentes
class MenuOption {
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  MenuOption(
      {required this.route,
      required this.icon,
      required this.name,
      required this.screen});
}
