import 'package:flutter/material.dart';
import 'package:khatiwada_bangsawali_updated/Dashboard/tabbar.dart';

class ViewDetails extends StatefulWidget {
  String personName;
  int bangshaNo;
  ViewDetails({super.key, required this.personName, required this.bangshaNo});

  @override
  State<ViewDetails> createState() => _ViewDetailsState();
}

class _ViewDetailsState extends State<ViewDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(' ${widget.personName} khatiwada'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'वंश न. ${widget.bangshaNo.toString()}',
                style: const TextStyle(fontSize: 20),
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: const Icon(
                    Icons.person,
                    size: 100,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'NAME: ${widget.personName} khatiwada',
                style: const TextStyle(fontSize: 20),
              ),
              const Text(
                'DOB: 2023/1/10',
                style: TextStyle(fontSize: 20),
              ),
              const Text(
                'PHONE : 9817946662',
                style: TextStyle(fontSize: 20),
              ),
              const Expanded(child: CustomTabBar()),
            ],
          ),
        ));
  }
}
