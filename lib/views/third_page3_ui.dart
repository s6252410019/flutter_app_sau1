import 'package:flutter/material.dart';


class ThirdPage3UI extends StatelessWidget {
  const ThirdPage3UI({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Icon(
          Icons.accessibility,
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}