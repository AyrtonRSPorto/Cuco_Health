import 'package:flutter_modular/flutter_modular.dart';
import 'package:cuco_health_flutter/app/modules/listFriends/listFriends_store.dart';
import 'package:flutter/material.dart';

class ListFriendsPage extends StatefulWidget {
  final String title;
  const ListFriendsPage({Key? key, this.title = 'ListFriendsPage'}) : super(key: key);
  @override
  ListFriendsPageState createState() => ListFriendsPageState();
}
class ListFriendsPageState extends State<ListFriendsPage> {
  final ListFriendsStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}