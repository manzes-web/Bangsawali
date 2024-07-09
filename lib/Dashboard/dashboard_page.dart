import 'package:flutter/material.dart';
import 'package:khatiwada_bangsawali_updated/Dashboard/viewdetails.dart';
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

  Widget openDetails() {
    return const ViewDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: IconButton(
              onPressed: () {}, icon: const Icon(Icons.person_outlined))),
      floatingActionButton: FloatingActionButton(
        onPressed: showDialogBox,
        child: const Icon(Icons.add),
      ),
    );
  }
}
