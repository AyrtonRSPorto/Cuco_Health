import 'package:flutter/material.dart';

Widget buildContentProfile({required String nome,required String genero,
  required String email, required String telefone}){

  return Padding(
    padding: const EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: Text(nome,style: const TextStyle(fontSize: 20,fontStyle: FontStyle.italic),)),
        SizedBox(height: 100.0),
        Text('Gênero: ',style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),),
        SizedBox(height: 35.0),
        Text('E-mail: ',style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),),
        SizedBox(height: 35.0),
        Text('Telefone: ',style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),),
      ],
    ),
  );
}

Widget buttonListFriends(){
  return FloatingActionButton(
    onPressed: (){},
    child: const Icon(
        Icons.person
    ),
  );
}

Widget buildTopProfile(){
  return Stack(
    clipBehavior: Clip.none,
    alignment: Alignment.center,
    children: [
      Container(
        margin: const EdgeInsets.only(bottom: 144 / 2),
        child: buildCoverImage(),
      ),
      Positioned(
          top: 280 - 144 / 2,
          child: buildProfileImage()
      ),
    ],
  );
}

Widget buildProfileImage(){
  return const CircleAvatar(
    radius: 144 / 2,
    backgroundColor: Colors.black,
  );
}

Widget buildCoverImage(){
  return Container(
    color: Colors.blue,
    child: const Image(
      image: AssetImage("assets/images/cuco_health.jpeg"),
      width: double.infinity,
      height: 280,
      fit: BoxFit.cover,
    ),
  );
}