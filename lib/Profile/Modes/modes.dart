import 'package:flutter/material.dart';
import 'package:khatiwada_bangsawali_updated/utils/appbar.dart';

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
      appBar: BangsawaliAppbar(
        appbarName: 'खतिवडा बंशवाली',
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
