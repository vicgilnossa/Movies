import 'package:flutter/material.dart';
import 'package:flutter_application_3/themes/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderState = 300;
  bool _checkboxEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sliders"),
        ),
        body: Column(
          children: [
            Slider(
                activeColor: AppTheme.secondary,
                value: _sliderState,
                min: 50,
                max: 400,
                onChanged: _checkboxEnabled
                    ? (value) {
                        _sliderState = value;
                        setState(() {});
                      }
                    : null),
            CheckboxListTile(
              subtitle: const Text("Como fue"),
              activeColor: AppTheme.secondary,
              tileColor: AppTheme.primary,
              title: const Text("Habilitar checkbox"),
              value: _checkboxEnabled,
              onChanged: (value) => setState(() {
                _checkboxEnabled = value ?? true;
              }),
            ),
            SwitchListTile(
                subtitle: const Text("Como fue"),
                activeColor: AppTheme.secondary,
                tileColor: AppTheme.primary,
                title: const Text("Habilitar checkbox"),
                value: _checkboxEnabled,
                onChanged: (value) => setState(() {
                      _checkboxEnabled = value;
                    })),
            Image(
              image: const NetworkImage(
                  "https://compass-ssl.xboxlive.com/assets/9a/06/9a06e049-1447-492f-9be1-d40cfccea63f.png?n=character-desktop.png"),
              fit: BoxFit.contain,
              width: _sliderState,
            )
          ],
        ));
  }
}
