import 'package:cuco_health_flutter/app/share/models/user_model.dart';
import 'package:dio/dio.dart';

class HomeRepository{
  Future<UserModel> getUserRepository() async{
    late UserModel user;
    try{
      var response = await Dio().get('https://randomuser.me/api');
      if(response.statusCode == 200){
        user = UserModel.fromJson(response.data);
      }
    }catch (e){
      print('Erro: $e');
    }
    return user;
  }
}