import 'package:flutter/material.dart';

class Card2 extends StatelessWidget {
  final String? tituloDisco;
  final String imgUrl;

  const Card2({Key? key, required this.imgUrl, this.tituloDisco})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
              fit: BoxFit.cover,
              width: double.infinity,
              height: 230,
              placeholder: const AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(imgUrl)),
          if (tituloDisco != null)
            Container(
              padding: const EdgeInsets.only(
                  right: 20, top: 20, bottom: 20, left: 20),
              child: Text(tituloDisco ?? "Sin título"),
            )
        ],
      ),
    );
  }
}
