import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Cards "),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: const [
            Card1(),
            SizedBox(
              height: 20,
            ),
            Card2(
              tituloDisco: "Im in your mind fuzz",
              imgUrl:
                  "https://assets.fontsinuse.com/static/use-media-items/108/107563/full-1200x1200/5e73e878/I%27m%20In%20Your%20Mind%20Fuzz.jpeg",
            ),
            SizedBox(
              height: 20,
            ),
            Card2(
              tituloDisco: "Nonagon infinity",
              imgUrl:
                  "https://assets.fontsinuse.com/static/use-media-items/108/107562/full-1500x1500/5e73e87e/81OzrxuWtGL-_SL1500_.jpeg",
            ),
            SizedBox(
              height: 20,
            ),
            Card2(
              tituloDisco: "Oddments",
              imgUrl:
                  "https://i.pinimg.com/originals/b3/64/7f/b3647f6982aa51ec48343b0d9733efb1.jpg",
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ));
  }
}
