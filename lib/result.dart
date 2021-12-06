import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String displayMsg;

  Result({required this.displayMsg});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(displayMsg),
    );
  }
}
