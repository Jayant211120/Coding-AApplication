import 'package:codingapplication/ReusableCode/Buttons.dart';
import 'package:codingapplication/ReusableCode/curve.dart';
import 'package:codingapplication/ReusableCode/drawer.dart';
import 'package:codingapplication/ReusableCode/text.dart';
import 'package:flutter/material.dart';

import '../../ReusableCode/appbar.dart';
class settings extends StatelessWidget {
  const settings({super.key});

  @override
  Widget build(BuildContext context) {
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
              const Center(child: text(name: 'Settings',fontWeight: FontWeight.bold,size: 40,color: Colors.pinkAccent,)),

              //SubPart
             Padding(padding:const EdgeInsets.all(10),child:elevatedButton(callBack:(){}, backgroundColor: Colors.blue, foregroundColor: Colors.white, text: 'Theme(Dark/Light)')),
             Padding(padding:const EdgeInsets.all(10),child:elevatedButton(callBack:(){}, backgroundColor: Colors.blue, foregroundColor: Colors.white, text: 'Theme(Dark/Light)')),
             Padding(padding:const EdgeInsets.all(10),child:elevatedButton(callBack:(){}, backgroundColor: Colors.blue, foregroundColor: Colors.white, text: 'Languages')),
             Padding(padding:const EdgeInsets.all(10),child:elevatedButton(callBack:(){}, backgroundColor: Colors.blue, foregroundColor: Colors.white, text: 'Logout')),


            ],
          ),
        )
    );
  }
}