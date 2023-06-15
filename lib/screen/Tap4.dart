import 'package:flutter/material.dart';
class Tap4 extends StatefulWidget {
  const Tap4({super.key});

  @override
  State<Tap4> createState() => _Tap4State();
}

class _Tap4State extends State<Tap4> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Text('Screen 4'),
        ),
      )
    );
  }
}