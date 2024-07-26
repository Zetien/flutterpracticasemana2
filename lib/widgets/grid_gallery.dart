import 'package:flutter/material.dart';

class GridGallery extends StatelessWidget {
  const GridGallery({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,  // Permite que el GridView se ajuste a su contenido
        physics: const NeverScrollableScrollPhysics(),  // Desactiva el scroll del GridView para que no entre en conflicto con el CustomScrollView
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,  // Número de columnas
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemCount: 13,  // Número de imágenes
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            'assets/img_gallery/image_${index + 1}.png',  // Ajusta la ruta de la imagen según sea necesario
            fit: BoxFit.cover,
          );
        },
      );
  }
}
