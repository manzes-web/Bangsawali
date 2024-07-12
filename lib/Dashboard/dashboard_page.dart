import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:khatiwada_bangsawali_updated/Dashboard/viewdetails.dart';
import 'package:khatiwada_bangsawali_updated/Models/user_info.dart';
import 'package:khatiwada_bangsawali_updated/utils/add_people.dart';
import 'package:khatiwada_bangsawali_updated/utils/dialogbox.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
  int count = 123;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'वंश न. $count',
              style: const TextStyle(fontSize: 30),
            ),
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
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AddPeople())),
                child: const Text(
                  'ADD PEOPLE',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),

      // const ViewDetails(
      //   index: 'manjesh',
    );
  }
}
