import 'dart:async';


import 'package:flutter/material.dart';
import 'package:aksi_hijau/auth/Login.dart';
import 'package:flutter_animate/flutter_animate.dart';



class splash extends StatefulWidget {
  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        child: Image.asset(
          'assets/images/logo.png',
          width: 150,
        ),
      ),
    )
    );
  }
}
