import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    return AlertDialog(
      content: TextField(
        controller: textController,
        cursorColor: Theme.of(context).colorScheme.inversePrimary,
        decoration: InputDecoration(
          labelText: 'Enter Name..',
          labelStyle:
              TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
          focusColor: Theme.of(context).colorScheme.inversePrimary,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.inversePrimary)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.inversePrimary)),
        ),
      ),
      title: const Text('ADD PEOPLE'),
      actions: [
        MaterialButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('ADD'),
        )
      ],
    );
  }
}
