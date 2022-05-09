import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text('Titulo'),
            content: Column(
                mainAxisSize:
                    MainAxisSize.min, // Ocupa el espacio mínimo necesario
                children: const [
                  Text('Este es el contenido de la alerta'),
                  SizedBox(
                    height: 10,
                  ),
                  FlutterLogo(
                    size: 100,
                  )
                ]),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'Cerrar',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Ok'),
              ),
            ],
          );
        });
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible:
            false, // Al tocar en el sombreado de la alerta, se cierra la alerta si está en true
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Buenaaas'),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            content: Column(
                mainAxisSize:
                    MainAxisSize.min, // Ocupa el espacio mínimo necesario
                children: const [
                  Text('Este es el contenido de la alerta'),
                  SizedBox(
                    height: 10,
                  ),
                  FlutterLogo(
                    size: 100,
                  )
                ]),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'Cerrar',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Ok'),
              ),
            ],
          );
        });
  }

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
            onPressed: () => Platform.isAndroid
                ? displayDialogAndroid(context)
                : displayDialogIOS(
                    context) // Asegurar que cuando se use Platform, no use el import del html, sino del io
            ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          backgroundColor: Colors.indigo,
          onPressed: () => Navigator.pop(context)),
    );
  }
}
