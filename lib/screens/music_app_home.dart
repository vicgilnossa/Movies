import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/widgets.dart';

class MusicAppHomeScreen extends StatelessWidget {
  const MusicAppHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: const [
          Card3(
            imgUrl:
                "https://assets.fontsinuse.com/static/use-media-items/108/107563/full-1200x1200/5e73e878/I%27m%20In%20Your%20Mind%20Fuzz.jpeg",
          ),
          SizedBox(
            height: 10,
          ),
          Card3(
              imgUrl:
                  "https://assets.fontsinuse.com/static/use-media-items/108/107562/full-1500x1500/5e73e87e/81OzrxuWtGL-_SL1500_.jpeg")
        ],
      ),
    );
  }
}
