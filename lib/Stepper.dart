import 'package:flutter/material.dart';

class MyStepper extends StatefulWidget {
  const MyStepper({Key? key}) : super(key: key);

  @override
  State<MyStepper> createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: const Text(
          'Jimenez', // Puedes cambiar este número según sea necesario
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
            child: Stepper(
              steps: const [
                Step(
                  title: Text('Step 1'),
                  content: Text('Information for step 1'),
                ),
                Step(
                  title: Text('Step 2'),
                  content: Text('Information for step 2'),
                ),
                Step(
                  title: Text('Step 3'),
                  content: Text('Information for step 3'),
                ),
                Step(
                  title: Text('Step 4'),
                  content: Text('Information for step 4'),
                ),
              ],
              onStepTapped: (int newIndex) {
                setState(() {
                  _currentStep = newIndex;
                });
              },
              currentStep: _currentStep,
              onStepContinue: () {
                if (_currentStep != 3) {
                  setState(() {
                    _currentStep += 1;
                  });
                }
              },
              onStepCancel: () {
                if (_currentStep != 0) {
                  setState(() {
                    _currentStep = 0;
                  });
                }
              },
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
