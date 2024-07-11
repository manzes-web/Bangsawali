import 'package:flutter/material.dart';
import 'package:khatiwada_bangsawali_updated/Models/user_info.dart';

class DialogBox extends StatelessWidget {
  final Function(String) onAdd;

  const DialogBox({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    List user = User.personName;
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('CANCEL'),
            ),
            TextButton(
              onPressed: () {
                if (textController.text.isNotEmpty) {
                  onAdd(textController.text);
                  Navigator.pop(context);
                }
              },
              child: const Text('ADD'),
            ),
          ],
        )
      ],
    );
  }
}
