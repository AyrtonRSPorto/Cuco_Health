import 'package:cuco_health_flutter/app/modules/home/home_store.dart';
import 'package:cuco_health_flutter/app/share/widgets/profile_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {

  @override
  void initState(){
    controller.getUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
          floatingActionButton: buttonListFriends(),
          body: ListView(
            padding: EdgeInsets.zero,
            children: [
              Observer(builder: (_){
                if(controller.usersModel == null){
                  return buildTopProfile(null);
                }else{
                  return buildTopProfile(controller.usersModel!.results[0].picture.medium);
                }
              }),
              Observer(builder: (_){
                if(controller.usersModel == null){
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }else{
                  return buildContentProfile(
                    nome: controller.usersModel!.results[0].name.first,
                    genero: controller.usersModel!.results[0].gender,
                    email: controller.usersModel!.results[0].email,
                    telefone: controller.usersModel!.results[0].cell,
                  );
                }
              })
              /*FutureBuilder(
                  future: controller.getUser(),
                  builder: (context, snapshot){
                    if(snapshot.hasData){
                      buildContentProfile(
                        nome: controller.usersModel!.results[0].name.first,
                        genero: '',//controller.usersModel!.results[0].gender,
                        email: '' ,//controller.usersModel!.results[0].email,
                        telefone: '',//controller.usersModel!.results[0].cell,
                      );
                    }else{
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return Container();
                  })*/
            ],
          )
      );
  }
}

