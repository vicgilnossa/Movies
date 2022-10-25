import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/menu_options.dart';
import 'package:flutter_application_3/router/app_routes.dart';
import 'package:flutter_application_3/screens/screens.dart';
import 'package:flutter_application_3/themes/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuoptions;
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            title: const Center(
              child: Text("Home"),
            )),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            title: Text(menuOptions[index].name),
            onTap: () {
              Navigator.pushNamed(context, menuOptions[index].route);
            },
            leading: Icon(
              menuOptions[index].icon,
              color: AppTheme.primary,
            ),
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOptions.length,
        ));
  }
}
