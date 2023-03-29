import 'package:flutter/material.dart';
import 'package:full_belly/screens/confirmation.dart';
import 'package:full_belly/screens/home.dart';

class NgoHS extends StatelessWidget {
  const NgoHS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(240.0),
        child: AppBar(
          title: Text(
            'Jayant agarwal',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.orangeAccent,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100))),
          elevation: 0,
        ),
      ),
    );
  }
}
