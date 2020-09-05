import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magic Ball',
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          title: Text('Ask me yes or no questions!',
          style:TextStyle(
            color: Colors.white,
          ),),
          backgroundColor: Colors.blue[900],
        ),
        body: BallFace(),
      ),
    ),
  );
}

class BallFace extends StatefulWidget {
  @override
  _BallFaceState createState() => _BallFaceState();
}

class _BallFaceState extends State<BallFace> {
  int ballFace = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget> [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    ballFace = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('images/ball$ballFace.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
