import 'package:cuco_health_flutter/app/modules/listFriends/listFriends_module.dart';
import 'package:cuco_health_flutter/app/modules/splashScreen/splashScreen_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/spash/', module: SplashScreenModule()),
    ModuleRoute('/home/', module: HomeModule()),
    ModuleRoute('/list/', module: ListFriendsModule())
  ];

}