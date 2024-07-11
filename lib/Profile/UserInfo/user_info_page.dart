import 'package:flutter/material.dart';
import 'package:khatiwada_bangsawali_updated/utils/appbar.dart';

class UserInfoPage extends StatelessWidget {
  const UserInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BangsawaliAppbar(
        appbarName: 'खतिवडा बंशवाली',
      ),
      body: const Center(
        child: Text('hello here is user info'),
      ),
    );
  }
}
