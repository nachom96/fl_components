import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imageIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  // Con el listener, se imprime la posicion de los píxeles, cuando la posición llega al final (maxScrollExtent)
  // se añaden 5 imágenes con el método add5, lo que provoca un scroll infinito(hasta que no haya más id's de imágen)
  // en picsum.photos
  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.pixels + 500 >=
          scrollController.position.maxScrollExtent) {
        // add5();
        fetchData();
      }
    });
  }

  Future fetchData() async {
    if (isLoading) return;
    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));

    add5();
    isLoading = false;
    setState(() {});
  }

  void add5() {
    final lastId = imageIds.last;
    // Coge el elemento final de imageIds le suma 1,2,3,4,5 y los añade.
    imageIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: MediaQuery.removePadding(
        // Elimina el padding por defecto superior e inferior, no es necesario.
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              controller: scrollController,
              itemCount: imageIds.length,
              itemBuilder: (BuildContext context, int index) {
                return FadeInImage(
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit
                        .cover, // Toma todo el espacio que tiene la imagen
                    placeholder: const AssetImage('assets/jar-loading.gif'),
                    image: NetworkImage(
                        'https://picsum.photos/500/300?image=${imageIds[index]}') // Obtiene el índice del array
                    );
              },
            ),
            // En el left, coge la mitad del ancho del dispositivo (con el media query) y se le resta 30, ya que el ancho del container de LoadingIcon es 60
            Positioned(
              bottom: 40,
              left: size.width * 0.5 - 30,
              child: _LoadingIcon(),
            )
          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9), shape: BoxShape.circle),
      child: const CircularProgressIndicator(
        color: AppTheme.primary,
      ),
    );
  }
}
