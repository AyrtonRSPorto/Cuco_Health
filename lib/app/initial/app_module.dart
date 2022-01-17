import 'package:cuco_health_flutter/app/modules/splashScreen/splashScreen_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: SplashScreenModule()),
    ModuleRoute('/secondinitial', module: HomeModule()),
  ];

}