import 'package:flutter/material.dart';
import 'package:khatiwada_bangsawali_updated/Profile/Modes/modes.dart';
import 'package:khatiwada_bangsawali_updated/Profile/Settings/settings.dart';
import 'package:khatiwada_bangsawali_updated/Profile/UserInfo/user_info_page.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        const Center(
          child: CircleAvatar(
            radius: 80,
            child: Icon(
              Icons.person,
              size: 60,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => UserInfoPage()));
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(bottom: BorderSide(color: Colors.black, width: 1)),
            ),
            child: const Column(
              children: [
                Text(
                  'User Info',
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Settings()));
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(bottom: BorderSide(color: Colors.black, width: 1)),
            ),
            child: const Column(
              children: [
                Text(
                  'Settings',
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Modes()));
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.white,
                border:
                    Border(bottom: BorderSide(color: Colors.black, width: 1))),
            child: const Column(
              children: [
                Text(
                  'Modes',
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
