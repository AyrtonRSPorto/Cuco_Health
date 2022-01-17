import 'package:cuco_health_flutter/app/share/models/user_model.dart';
import 'package:dio/dio.dart';

class HomeRepository{
  @override
  Future<UserModel> getUser() async{
    late UserModel users;
    try{
      var response = await Dio().get('https://randomuser.me/api');
      if(response.statusCode == 200){
        users = UserModel.fromJson(response.data);
        print('O objeto: $users');
      }
    }catch (e){
      print('Erro: $e');
    }
    return users;
  }
}