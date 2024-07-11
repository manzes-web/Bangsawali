import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:khatiwada_bangsawali_updated/Localization/localization.dart';
import 'package:khatiwada_bangsawali_updated/Localization/strings.dart';
import 'package:khatiwada_bangsawali_updated/Routes/routes.dart';
import 'package:khatiwada_bangsawali_updated/utils/appbar.dart';

import '../Dashboard/dashboard_page.dart';
import '../Profile/profile.dart';
import 'Home.dart';

class HomeState extends StatefulWidget {
  const HomeState({super.key});

  @override
  _HomeStateState createState() => _HomeStateState();
}

class _HomeStateState extends State<HomeState> {
  int _selectedIndex = 0;
  static final List<String> _routes = [
    Routes.home.path,
    Routes.dashboard.path,
    Routes.profile.path,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BangsawaliAppbar(
        appbarName: appName.loc,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          Home(),
          Dashboard(),
          Profile(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: Routes.home.name,
                ),
                GButton(
                  icon: Icons.menu,
                  text: Routes.dashboard.name,
                ),
                GButton(
                  icon: Icons.person,
                  text: Routes.profile.name,
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                  context.go(_routes[index]);
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
