import 'package:flutter/material.dart';
import 'package:full_belly/screens/confirmation.dart';
import 'package:full_belly/screens/home.dart';
import 'package:full_belly/screens/Ngo_homepage.dart';
// import 'package:full_belly/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Full Belly',
      home: HomeScreen(),
    );
  }
}
