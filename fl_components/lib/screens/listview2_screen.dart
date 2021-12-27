import 'package:flutter/material.dart';

// Listview Separated
// Utilizando esta lista, los elementos no se renderizan de manera instantánea (se crea un scroll para los elementos mostrados)
// También se puede usar listview.builder (ver diferencias en Apuntes.txt)

class Listview2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super smash',
    'Final Fantasy'
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Listview Tipo 2',
        ),
        elevation: 0, // Quita el sombreado (o pone más, según el número)
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(  // El builder indica cómo se va a construir cada uno de los items          
          title: Text(options[index]),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.indigo,
          ),
          onTap: () {
            final game = options[index];
            print(game);
          },
        ),
        separatorBuilder: (_, __) =>  // Separador, la barra espaciadora es porque no se va a utilizar ese argumento
            const Divider(), 
      ),
    );
  }
}
