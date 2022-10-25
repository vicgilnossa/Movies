import 'package:flutter/material.dart';

class Card3 extends StatelessWidget {
  final String imgUrl;
  const Card3({Key? key, required this.imgUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FadeInImage(
                fit: BoxFit.cover,
                height: 100,
                width: 100,
                placeholder: const AssetImage('assets/jar-loading.gif'),
                image: NetworkImage(imgUrl)),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Container(
                  alignment: Alignment.topLeft,
                  height: 120,
                  width: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          "King Gizzard and the Wizard Lizzard",
                          maxLines: 2,
                          style: TextStyle(fontSize: 14),
                        ),
                        Text("Oddments", style: TextStyle(fontSize: 12)),
                        SizedBox(
                          height: 19,
                        ),
                        Text(
                          "Rock Prog",
                        )
                      ],
                    ),
                  )),
            ],
          ),
          const SizedBox(
            width: 17,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: const Text("Ver más")),
              TextButton(onPressed: () {}, child: const Text("Editar"))
            ],
          )
        ],
      ),
    );
  }
}
