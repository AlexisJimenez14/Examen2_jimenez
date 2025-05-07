import 'package:flutter/material.dart';

class MyAdaptive extends StatelessWidget {
  const MyAdaptive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Jimenez', // Puedes cambiar este título según necesites
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
                children: const [
                  Slider.adaptive(
                    value: 1,
                    onChanged: null,
                  ),
                  SwitchListTile.adaptive(
                    title: Text('Switch List Tile'),
                    value: true,
                    onChanged: null,
                  ),
                  Switch.adaptive(
                    value: true,
                    onChanged: null,
                  ),
                  Icon(Icons.share),
                  CircularProgressIndicator.adaptive(),
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
