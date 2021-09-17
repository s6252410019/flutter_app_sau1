import 'package:flutter/material.dart';


class ThirdPage1UI extends StatelessWidget {
  const ThirdPage1UI({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Icon(
          Icons.dangerous,
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}