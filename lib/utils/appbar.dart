import 'package:flutter/material.dart';

class BangsawaliAppbar extends StatelessWidget implements PreferredSizeWidget {
  String appbarName;
   BangsawaliAppbar({super.key, required this.appbarName});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 20,
      title:  Text(
        appbarName,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 30),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
