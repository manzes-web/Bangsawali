import 'package:flutter/material.dart';
import 'package:khatiwada_bangsawali_updated/Models/user_info.dart';
import 'package:khatiwada_bangsawali_updated/utils/dialogbox.dart';

class DaughterList extends StatefulWidget {
  const DaughterList({super.key});

  @override
  State<DaughterList> createState() => _DaughterListState();
}

class _DaughterListState extends State<DaughterList> {
  @override
  Widget build(BuildContext context) {
    void showDialogBox() {
      showDialog(
          context: context,
          builder: (context) => DialogBox(onAdd: (String newName) {
                setState(() {
                  User.personName.add(newName);
                });
              }));
    }

    List user = User.personName;
    int count = 124;
    return Scaffold(
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: user.length,
            itemBuilder: (context, index) => InkWell(
              child: ListTile(
                leading: Text("${index + 1}".toString()),
                title: Text(user[index]),
                trailing: const Icon(Icons.arrow_forward),
              ),
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width,
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                border: Border(),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: MaterialButton(
              onPressed: showDialogBox,
              child: const Text(
                'ADD DAUGHTER',
                style: TextStyle(color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
