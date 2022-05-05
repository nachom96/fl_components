import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          // style: ElevatedButton.styleFrom(
          //     primary: Colors.indigo,
          //     shape: const StadiumBorder(), // Redondea los bordes
          //     elevation: 0),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Mostrar alerta',
              style: TextStyle(fontSize: 20),
            ),
          ),
          onPressed: () {},
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          backgroundColor: Colors.indigo,
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
