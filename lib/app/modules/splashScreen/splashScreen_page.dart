import 'package:cuco_health_flutter/app/share/widgets/splash_screen_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:cuco_health_flutter/app/modules/splashScreen/splashScreen_store.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  SplashScreenPageState createState() => SplashScreenPageState();
}
class SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5),(){
      Navigator.pushReplacementNamed(context, '/secondinitial');
    });
  }

  final SplashScreenStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return introSplashScreen();
  }
}

