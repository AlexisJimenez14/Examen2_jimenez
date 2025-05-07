import 'package:flutter/material.dart';

class MyScrollbar extends StatelessWidget {
  const MyScrollbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
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
            child: Scrollbar(
              thumbVisibility: true,
              thickness: 10,
              child: ListView.separated(
                padding: const EdgeInsets.all(20),
                itemCount: 25,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
                itemBuilder: (context, index) => buildCard(index + 1),
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

  Widget buildCard(int index) => Card(
        margin: EdgeInsets.zero,
        elevation: 5.0,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Item $index',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      );
}
