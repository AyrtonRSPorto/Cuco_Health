import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

Widget introSplashScreen(){
  return Stack(
    children: [
      SplashScreen(
        seconds: 2,
        backgroundColor: Colors.white,
        loaderColor: Colors.transparent,
      ),
      Center(
        child: Container(
          width: 300,
          height: 300,
          child: const Image(image: AssetImage("assets/images/cuco.jpeg")),
        ),
      )
    ],
  );
}