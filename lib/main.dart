import 'package:flutter/material.dart';
import 'package:plants_app/homapage.dart';

void main() {
  runApp(Plants());
}

class Plants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}