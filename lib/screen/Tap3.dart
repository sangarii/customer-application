import 'package:flutter/material.dart';

class Tap3 extends StatefulWidget {
  const Tap3({super.key});

  @override
  State<Tap3> createState() => _Tap3State();
}

class _Tap3State extends State<Tap3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Text('screen 3'),
        ),
      ),
    );
  }
}