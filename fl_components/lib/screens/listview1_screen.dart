import 'package:flutter/material.dart';

// ListView básico

class Listview1Screen extends StatelessWidget {
  // 1º Lista que será usada para crear un ListTile con cada elemento de ella
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super smash',
    'Final Fantasy'
  ];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Listview Tipo 1',
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          // 2º Creación de un Mapa con la lista (options) que será pasada a lista para usar sus elementos
          // Los tres puntos es un spread operator que sirve para extraer cada uno de los elementos para que así muestre dicho widget
          // El .map es un  mapa que toma cada elemento de la lista options y lo transforma en lo que retorna la lambda. Al final hay que pasarlo a lista con el .tolist          
          ...options
              .map((game) => ListTile(
                    title: Text(game),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  ))
              .toList()
        ],
      ),
    );
  }
}
