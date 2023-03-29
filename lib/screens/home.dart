import 'package:flutter/material.dart';
import 'package:full_belly/screens/confirmation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(240.0),
          child: AppBar(
            title: Text(
              'Full Belly',
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
                    bottomLeft: Radius.circular(200),
                    bottomRight: Radius.circular(0))),
            elevation: 0,
          ),
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(80.0),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => confirmation()),
                  );
                },
                child: Image.asset(
                  'assets/delivery.png',
                  scale: 2,
                ),
              ),
              SizedBox(
                width: 24,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => confirmation()),
                  );
                },
                child: Image.asset(
                  'assets/profile.png',
                  scale: 2,
                ),
              ),
            ],
          ),
        )),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: Container(
              color: Colors.amber,
              height: 100,
              width: 100,
              child: Align(
                child: Text(
                  'I want some food',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
        ));
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.orange;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    canvas.drawCircle(Offset(30, 200), 50, Paint()..color = Colors.orange);
    canvas.drawCircle(Offset(30, 200), 45, Paint()..color = Colors.white);
    canvas.drawCircle(Offset(190, 200), 50, Paint()..color = Colors.orange);
    canvas.drawCircle(Offset(190, 200), 45, Paint()..color = Colors.white);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
