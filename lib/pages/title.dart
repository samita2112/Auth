import 'package:flutter/material.dart';
import 'dart:async';
import 'package:firstapp/pages/login.dart';
import 'package:get/get.dart';

class title extends StatefulWidget {
  const title({Key? key}) : super(key: key);

  @override
  _titleState createState() => _titleState();
}

class _titleState extends State<title> {
  @override
  void initState() {
    // precacheImage(theImage, context);
    super.initState();
    // () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=>NewTitle()),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Stay Updated',
              style: TextStyle(
                color: Colors.white,
                fontSize: 85.0,
                fontFamily: 'Salsa',
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'A News Updating Application',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
