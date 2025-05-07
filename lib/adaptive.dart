import 'package:flutter/material.dart';

class MyAdaptive extends StatefulWidget {
  const MyAdaptive({Key? key}) : super(key: key);

  @override
  State<MyAdaptive> createState() => _MyAdaptiveState();
}

class _MyAdaptiveState extends State<MyAdaptive> {
  double _sliderValue = 0.5; // Valor inicial del slider
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Jimenez',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Color(0xffed722b),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Slider.adaptive(
                    value: _sliderValue,
                    min: 0,
                    max: 1,
                    onChanged: (double newValue) {
                      setState(() {
                        _sliderValue = newValue;
                      });
                    },
                  ),
                  SwitchListTile.adaptive(
                    title: const Text('Switch List Tile'),
                    value: _switchValue,
                    onChanged: (bool? newValue) {
                      setState(() {
                        if (newValue != null) {
                          _switchValue = newValue;
                        }
                      });
                    },
                  ),
                  Switch.adaptive(
                    value: _switchValue,
                    onChanged: (bool? newValue) {
                      setState(() {
                        if (newValue != null) {
                          _switchValue = newValue;
                        }
                      });
                    },
                  ),
                  const Icon(Icons.share),
                  const CircularProgressIndicator.adaptive(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Botón regresar
              },
              child: const Text('Regresar'),
            ),
          ),
        ],
      ),
    );
  }
}
