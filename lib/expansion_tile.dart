import 'package:flutter/material.dart';

class MyExpansionTile extends StatelessWidget {
  const MyExpansionTile({Key? key}) : super(key: key);

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
            child: const ExpansionTile(
              title: Text(
                'See more',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Icon(Icons.info),
              backgroundColor: Colors.black12,
              children: [
                ListTile(title: Text('First tile')),
                ListTile(title: Text('Second tile')),
                ListTile(title: Text('Third tile')),
                ListTile(title: Text('Fourth tile')),
              ],
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
