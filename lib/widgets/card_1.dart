import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.abc_rounded,
              color: AppTheme.primary,
            ),
            title: Text("Soy un título"),
            subtitle: Text(
                "Magna culpa pariatur ea reprehenderit mollit Lorem do occaecat excepteur. Magna nisi ullamco laborum elit anim et. Esse deserunt ipsum tempor id."),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text("Cancel")),
                TextButton(onPressed: () {}, child: const Text("Ok")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
