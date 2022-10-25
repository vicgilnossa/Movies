import 'package:flutter/material.dart';
import 'package:flutter_application_3/themes/app_theme.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Avatar"), actions: [
        Container(
          margin: const EdgeInsets.only(right: 5),
          child: const CircleAvatar(
            backgroundColor: Color.fromARGB(255, 72, 57, 63),
            child: Text("VG"),
          ),
        )
      ]),
      body: const Center(
          child: CircleAvatar(
        maxRadius: 100,
        backgroundImage: NetworkImage(
            "https://indiehoy.com/wp-content/uploads/2021/02/nirvana.jpg"),
      )),
    );
  }
}
