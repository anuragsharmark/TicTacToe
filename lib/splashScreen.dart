import 'dart:async';

import 'package:flutter/material.dart';
import 'package:xo_app/game.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => game(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 224, 183),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/Tic.png', fit: BoxFit.cover),
            Text(
              'Flutter',
              style: TextStyle(
                  fontFamily: 'Myfont',
                  fontSize: 40,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
