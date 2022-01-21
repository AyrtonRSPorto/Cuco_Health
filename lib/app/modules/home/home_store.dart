import 'package:cuco_health_flutter/app/modules/home/repository/home_repository.dart';
import 'package:cuco_health_flutter/app/share/models/user_model.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  final _repositoryUser = HomeRepository();

  @observable
  UserModel? usersModel;
  
  @action
  getUser() async{
   try{
       usersModel =  await _repositoryUser.getUserRepository();
   } catch (e){
     throw Exception(e);
   }
  }
}
