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
      const Center(
        child: SizedBox(
          width: 300,
          height: 300,
          child: Image(image: AssetImage("assets/images/cuco.jpeg")),
        ),
      )
    ],
  );
}