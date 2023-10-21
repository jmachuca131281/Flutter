import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider test')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider(
                min: 70,
                max: 1000,
                activeColor: AppTheme.primary,
                // divisions: 10,
                value: _sliderValue,
                onChanged: _sliderEnable
                    ? (value) {
                        _sliderValue = value;
                        setState(() {});
                      }
                    : null),
            Checkbox(
                value: _sliderEnable,
                onChanged: (value) {
                  _sliderEnable = value ?? true;
                  setState(() {});
                }),
            CheckboxListTile(
                activeColor: AppTheme.primary,
                title: const Text('Active slider'),
                value: _sliderEnable,
                onChanged: (value) => setState(() {
                      _sliderEnable = value ?? true;
                    })),
            Switch(
                value: _sliderEnable,
                onChanged: (value) => setState(() {
                      _sliderEnable = value;
                    })),
            SwitchListTile(
              title: const Text('Habilitar el slider') ,
                activeColor: AppTheme.primary,
                value: _sliderEnable,
                onChanged: (value) => setState(() { 
                  _sliderEnable = value; 
                })
            ),
            const AboutListTile(),
            SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://www.clipartmax.com/png/middle/76-765128_im%C3%A1genes-de-la-peppa-pig-con-fondo-transparente-descarga-peppa-pig-png.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              )
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
