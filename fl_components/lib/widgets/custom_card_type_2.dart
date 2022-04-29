import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? name; // Así se hace opcional y no hace falta poner required

  const CustomCardType2({Key? key, required this.imageUrl, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias, // Corta un poquito los bordes
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double
                .infinity, // El double.infinity significa tomar todo el ancho posible. No usar en sitios donde el ancho no está especificado. En este caso valor por ser FadeInImage
            height: 230.0,
            fit: BoxFit.cover, // La imagen se adapta a todo el tamaño posible
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (name !=
              null) // Sirve para que el Container de abajo se dibuje cuando el valor recibido sea diferente de null
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(name ??
                  'Sin título'), // Sirve para que por defecto sea Sin título si no se pasa ningún valor
            )
        ],
      ),
    );
  }
}
