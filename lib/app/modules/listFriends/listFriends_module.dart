import 'package:cuco_health_flutter/app/modules/listFriends/listFriends_Page.dart';
import 'package:cuco_health_flutter/app/modules/listFriends/listFriends_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ListFriendsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ListFriendsStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const ListFriendsPage()),
  ];
}
