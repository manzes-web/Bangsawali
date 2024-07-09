import 'package:flutter/material.dart';
import 'package:khatiwada_bangsawali_updated/Home/nav_bar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Home',
    initialRoute: 'Home',
    routes: {
      'Home': (context) => const MyApp(),
    },
  ));
}
