import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MagicBall(),
    ),
  );
}

class MagicBall extends StatelessWidget {
  const MagicBall({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Center(
          child: Text('Ask Me Anything'),
        ),
        backgroundColor: Colors.blue.shade900,
      ),
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    void decisionMaker() {
      setState(() {
        ballNumber = Random().nextInt(5) + 1;
      });
    }

    return Center(
      child: TextButton(
        onPressed: () {
          decisionMaker();
        },
        child: Image.asset('assets/images/ball$ballNumber.png'),
      ),
    );
  }
}
