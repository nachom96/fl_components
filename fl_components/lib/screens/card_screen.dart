import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          // Separación simétrica
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              imageUrl:
                  'https://static.wikia.nocookie.net/nacidos-de-la-bruma/images/4/41/Luthadel_por_Ben_McSweeney.png/revision/latest?cb=20190829121704&path-prefix=es',
              name: 'Luthadel',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              imageUrl: 'https://pbs.twimg.com/media/EL3SSKmXkAA8x5l.jpg',
              name: 'El Eolio',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              imageUrl: 'https://i.redd.it/0n7txpn02fj61.jpg',
              name: 'Orgrimmar',
            ),
          ],
        ));
  }
}
