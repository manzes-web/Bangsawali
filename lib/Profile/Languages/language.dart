import 'package:flutter/material.dart';
import 'package:khatiwada_bangsawali_updated/Localization/localization.dart';
import 'package:khatiwada_bangsawali_updated/Localization/strings.dart';
import 'package:khatiwada_bangsawali_updated/utils/appbar.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BangsawaliAppbar(
          appbarName: appName.loc,
        ),
        body: Column(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                margin: const EdgeInsets.only(
                    top: 10, left: 10, right: 10, bottom: 5),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: const Text(
                  'English',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: const Text(
                  'Nepali',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            )
          ],
        ));
  }
}
