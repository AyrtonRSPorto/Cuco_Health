import 'package:cuco_health_flutter/app/modules/home/home_store.dart';
import 'package:cuco_health_flutter/app/share/widgets/profile_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  final String title;
  HomePage({this.title = "Home"});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {

  @override
  void initState(){
    _loadUsers();
    super.initState();
  }

  _loadUsers() async{
    await controller.getUser();
  }

  String nome = '';
  String genero = '';
  String email = '';
  String telefone = '';

  @override
  Widget build(BuildContext context) {
    /*if(controller != null){
      nome = controller.usersModel!.results[0].name.first;
      genero = controller.usersModel!.results[0].gender;
      email = controller.usersModel!.results[0].email;
      telefone = controller.usersModel!.results[0].cell;
      print('IF $controller');
    }else{
      nome;
      genero;
      email;
      telefone;
      print('ELSE$controller');
    }*/
      return Scaffold(
          floatingActionButton: buttonListFriends(),
          body: ListView(
            padding: EdgeInsets.zero,
            children: [
              buildTopProfile(),
              buildContentProfile(
                nome: nome,//controller.usersModel!.results[0].name.first ,
                genero: genero,//controller.usersModel!.results[0].gender,
                email: email ,//controller.usersModel!.results[0].email,
                telefone: telefone,//controller.usersModel!.results[0].cell,
              )
            ],
          )
      );
  }
}

