import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:khatiwada_bangsawali_updated/Profile/Languages/language.dart';
import 'package:khatiwada_bangsawali_updated/Profile/Modes/modes.dart';
import 'package:khatiwada_bangsawali_updated/Profile/Settings/settings.dart';
import 'package:khatiwada_bangsawali_updated/Profile/UserInfo/user_info_page.dart';

import 'package:khatiwada_bangsawali_updated/Routes/routes.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

List<Widget> _settingRoutes = [
  const UserInfoPage(),
  const Settings(),
  const Modes(),
  const Language()
];
List<String> _settingRoutesName = [
  Routes.userInfo.name,
  Routes.settings.name,
  Routes.modes.name,
  Routes.language.name
];

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
          itemCount: _settingRoutes.length,
          itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => _settingRoutes[index]));
              },
              child: ListTile(
                title: Text(_settingRoutesName[index]),
                trailing: const Icon(Icons.arrow_forward),
              )),
        ),
      ),
    );
  }
}
