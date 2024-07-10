import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:khatiwada_bangsawali_updated/Dashboard/viewdetails.dart';
import 'package:khatiwada_bangsawali_updated/Routes/routes.dart';
import 'package:khatiwada_bangsawali_updated/utils/dialogbox.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  void showDialogBox() {
    showDialog(context: context, builder: (context) => const DialogBox());
  }

  List personList = ["manjesh", "jyoti", "pratik", "kushal"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: personList.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () => context.go(Routes.details.path),
                child: ListTile(
                  leading: Text("${index + 1}".toString()),
                  title: Text(personList[index]),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: showDialogBox,
              child: const Text('ADD PEOPLE'),
            )
          ],
        ),
      ),

      // const ViewDetails(
      //   index: 'manjesh',
    );
  }
}
