import 'package:cuco_health_flutter/app/modules/splashScreen/splashScreen_Page.dart';
import 'package:cuco_health_flutter/app/modules/splashScreen/splashScreen_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashScreenModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SplashScreenStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => SplashScreenPage()),
  ];
}
