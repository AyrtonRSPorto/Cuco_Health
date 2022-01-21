import 'package:flutter/material.dart';

Widget buildContentProfile({required String nome,required String genero,
  required String email, required String telefone}){

  return Padding(
    padding: const EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: Text(nome,style: const TextStyle(fontSize: 20,fontStyle: FontStyle.italic),)),
        const SizedBox(height: 100.0),
        Row(
          children: [
            const Text('Gênero: ',style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic),),
            const SizedBox(
              width: 5,
            ),
            Expanded(child: Text(genero,style: const TextStyle(fontSize: 20)))
          ],
        ),
        const SizedBox(height: 35.0),
        Row(
          children: [
            const Text('E-mail: ',style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic),),
            const SizedBox(
              width: 5,
            ),
            Expanded(child: Text(email,style: const TextStyle(fontSize: 20)))
          ],
        ),
        const SizedBox(height: 35.0),
        Row(
          children: [
            const Text('Telefone: ',style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic),),
            const SizedBox(
              width: 5,
            ),
            Expanded(child: Text(telefone,style: const TextStyle(fontSize: 20)))
          ],
        ),
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

Widget buildTopProfile(String? image){
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
          child: buildProfileImage(image)
      ),
    ],
  );
}

Widget buildProfileImage(String? urlImage){
  if(urlImage != null){
    return CircleAvatar(
      radius: 144 / 2,
      backgroundColor: Colors.black,
      backgroundImage: NetworkImage(urlImage),
    );
  }else{
    return const FlutterLogo();
  }
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