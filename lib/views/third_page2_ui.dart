import 'package:flutter/material.dart';


class ThirdPage2UI extends StatelessWidget {
  const ThirdPage2UI({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Icon(
          Icons.ac_unit_sharp,
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}