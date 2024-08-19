import 'package:codingapplication/ReusableCode/curve.dart';
import 'package:codingapplication/ReusableCode/drawer.dart';
import 'package:codingapplication/ReusableCode/text.dart';
import 'package:flutter/material.dart';

import '../../ReusableCode/appbar.dart';
class policy extends StatelessWidget {
  const policy({super.key});

  @override
  Widget build(BuildContext context) {
    final list=[
      '1. This application are free and paid both versions are available.',
      '2. If you are take paid version of this app,so it would be add free.',
      '3. After Payment money will be not refundable in any case.',
      '4. Your Mobile Data is fully Secure.',
      '5. App are not taking any type of permission for any type of access like camera,microphone,etc',
      '6. If you are give pressure regarding payment or other things,so it will take legal Action against you and also cancelled your paid subscription.'
    ];
    return Scaffold(
        drawer: const drawer(),
        //Drawer End
        appBar: AppBar(
          flexibleSpace:appbar(text: 'JCA', callback: () { Navigator.pop(context); },),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body:SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const curve(),
             //Heading Name
             const Center(child: text(name: 'Policy',fontWeight: FontWeight.bold,size: 40,color: Colors.pinkAccent,)),

              //SubPart
              Padding(padding:const EdgeInsets.all(10),child:text(name: list[0],size: 20,fontWeight: FontWeight.bold,)),
              Padding(padding:const EdgeInsets.all(10),child:text(name: list[1],size: 20,fontWeight: FontWeight.bold,)),
              Padding(padding:const EdgeInsets.all(10),child:text(name: list[2],size: 20,fontWeight: FontWeight.bold,)),
              Padding(padding:const EdgeInsets.all(10),child:text(name: list[3],size: 20,fontWeight: FontWeight.bold,)),
              Padding(padding:const EdgeInsets.all(10),child:text(name: list[4],size: 20,fontWeight: FontWeight.bold,)),
              Padding(padding:const EdgeInsets.all(10),child:text(name: list[5],size: 20,fontWeight: FontWeight.bold,)),


            ],
          ),
        )
    );
  }
}