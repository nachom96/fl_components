import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatelessWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.removePadding(
        // Elimina el padding por defecto superior e inferior, no es necesario.
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return FadeInImage(
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover, // Toma todo el espacio que tiene la imagen
                placeholder: const AssetImage('assets/jar-loading.gif'),
                image: NetworkImage(
                    'https://picsum.photos/500/300?image=${index + 1}'));
          },
        ),
      ),
    );
  }
}
