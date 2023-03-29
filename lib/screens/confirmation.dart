import 'package:flutter/material.dart';

import 'home.dart';

class confirmation extends StatelessWidget {
  const confirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: 150,
            width: 150,
            color: Colors.transparent,
            child: Container(
                child: Align(
              alignment: Alignment.bottomRight, 
              child: Text(
                'Donation Details',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
            ),
          )
          ),
          
    );
final List<String> entries = <String>['A', 'B', 'C'];
final List<int> colorCodes = <int>[600, 500, 100];

Widget build(BuildContext context) {
  return ListView.separated(
    padding: const EdgeInsets.all(8),
    itemCount: entries.length,
    itemBuilder: (BuildContext context, int index) {
      return Container(
        height: 50,
        color: Colors.amber[colorCodes[index]],
        child: Center(child: Text('Entry ${entries[index]}')),
      );
    },
    separatorBuilder: (BuildContext context, int index) => const Divider(),
  );
}
  }
}
