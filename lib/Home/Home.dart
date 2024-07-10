import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../Models/user_info.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<User> users = [];
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      fetchUsers();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            final email = user.email;
            final phone = user.phone;
            final gender = user.gender == 'male' ? Colors.blue : Colors.green;
            return ListTile(
              leading: CircleAvatar(
                child: Text('${index + 1}'),
              ),
              title: Text(email),
              tileColor: gender,
              subtitle: Text('ph: $phone'),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchUsers,
        child: const Icon(Icons.refresh),
      ),
    );
  }

  Future<void> fetchUsers() async {
    print('fetch users is called');
    const url = 'https://randomuser.me/api/?results=20';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final results = json['results'] as List<dynamic>;
    final transformed = results.map((e) {
      return User(gender: e['gender'], email: e['email'], phone: e['cell']);
    }).toList();
    setState(() {
      users = transformed;
    });
    print('fetch users completed');
  }
}
