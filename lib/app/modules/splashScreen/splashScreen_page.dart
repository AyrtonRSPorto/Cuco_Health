import 'dart:async';

import 'package:cuco_health_flutter/app/share/widgets/splash_screen_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  SplashScreenPageState createState() => SplashScreenPageState();
}
class SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3),()=> Modular.to.pushNamed('/home/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Center(
            child: SizedBox(
              width: 300,
              height: 300,
              child: Image(image: AssetImage("assets/images/cuco.jpeg")),
            ),
          )
        ],
      ),
    );
  }
}

