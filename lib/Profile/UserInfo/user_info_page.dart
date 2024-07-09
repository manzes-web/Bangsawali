import 'package:flutter/material.dart';

class UserInfoPage extends StatelessWidget {
  const UserInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        title: const Text(
          'खतिवडा बंशवाली',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('hello here is user info'),
      ),
    );
  }
}
