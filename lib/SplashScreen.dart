import 'dart:async';

import 'package:classico/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget{
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (Context)=>HomePage())
      );
    });
    
    
    super.initState();

  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: Image.asset('macos/assets/images/splashscreenimage.png',height: 500,width: 500,),

        ),
      ),
    );
  }
}