import 'package:flutter/material.dart';
import 'package:khatiwada_bangsawali_updated/Dashboard/viewdetails.dart';
import 'package:khatiwada_bangsawali_updated/Models/user_info.dart';
import 'package:khatiwada_bangsawali_updated/utils/dialogbox.dart';

class SonsList extends StatefulWidget {
  const SonsList({super.key});

  @override
  State<SonsList> createState() => _SonsListState();
}

class _SonsListState extends State<SonsList> {
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
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ViewDetails(
                              personName: user[index],
                              bangshaNo: count,
                            )));
              },
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
                'ADD SONS',
                style: TextStyle(color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
