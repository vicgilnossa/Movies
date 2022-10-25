import 'package:flutter/material.dart';
import 'package:flutter_application_3/themes/app_theme.dart';

class AlertScreen extends StatelessWidget {
  void displayDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 50,
              title: const Text("Título"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                      "Reprehenderit quis est nisi reprehenderit deserunt cupidatat in ut. Officia laboris irure tempor ipsum consequat occaecat ex est laborum voluptate. Qui est nulla commodo incididunt irure cillum.Officia laboris irure tempor ipsum consequat occaecat ex est laborum voluptate. Qui est nulla commodo incididunt irure cillum."),
                  SizedBox(
                    height: 20,
                  ),
                  FlutterLogo(size: 70),
                ],
              ),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("Salir"))
              ],
            ),
        barrierDismissible: false);
  }

  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                displayDialog(context);
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text("Mostrar alerta"),
              ))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: AppTheme.primary,
        child: const Icon(Icons.close),
      ),
    );
  }
}
