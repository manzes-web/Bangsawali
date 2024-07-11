import 'package:flutter/material.dart';
import 'package:khatiwada_bangsawali_updated/utils/appbar.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BangsawaliAppbar(
        appbarName: 'खतिवडा बंशवाली',
      ),
      body: const Center(
        child: Text('hello here is settings'),
      ),
    );
  }
}
