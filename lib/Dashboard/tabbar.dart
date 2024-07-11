import 'package:flutter/material.dart';
import 'package:khatiwada_bangsawali_updated/Dashboard/daughter_list.dart';
import 'package:khatiwada_bangsawali_updated/Dashboard/sons_list.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            tabs: [
              Tab(text: 'SONS'),
              Tab(text: 'DAUGHTERS'),
              Tab(text: 'WIFE'),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                SonsList(),
                DaughterList(),
                Center(child: Text('Wife list')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
