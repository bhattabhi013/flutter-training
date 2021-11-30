import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
    runApp(
      demoApp()
    );
}

class demoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Text('hello'),
    );
  }
}

