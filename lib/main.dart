import 'package:flutter/material.dart';
import 'package:sample_application/screen/Tap1.dart';
import 'package:sample_application/navigate.dart';

void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget {
  
  

  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: navigate(
       
      ),
    );
  }
  }

