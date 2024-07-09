import 'package:flutter/material.dart';

class Modes extends StatefulWidget {
  const Modes({super.key});

  @override
  State<Modes> createState() => _ModesState();
}

class _ModesState extends State<Modes> {
  String? _selectedOption = 'Light Mode';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        title: const Text(
          'खतिवडा बंशवाली',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          RadioListTile(
              title: const Text('Dark Mode'),
              value: 'Dark Mode',
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value;
                });
              }),
          const SizedBox(
            height: 5,
          ),
          RadioListTile(
              title: const Text('Light Mode'),
              value: 'Light Mode',
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value;
                });
              })
        ],
      ),
    );
  }
}
