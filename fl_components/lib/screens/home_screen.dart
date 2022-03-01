import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            leading: Icon(Icons.access_time_outlined),
            title: Text('Nombre de Ruta'),
            onTap: () {

              //final route = MaterialPageRoute(builder: (context) => const Listview1Screen());  
              //Navigator.push(context, route);

              Navigator.pushNamed(context, 'card');

            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: 10
          ),
    );
  }
}
