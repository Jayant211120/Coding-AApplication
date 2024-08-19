import 'package:codingapplication/ReusableCode/curve.dart';
import 'package:codingapplication/ReusableCode/drawer.dart';
import 'package:codingapplication/ReusableCode/text.dart';
import 'package:flutter/material.dart';
import '../../../ReusableCode/appbar.dart';
class BasicProjects extends StatelessWidget {
  const BasicProjects({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const drawer(),
        //Drawer End
        appBar: AppBar(
          flexibleSpace:appbar(text: 'JCA', callback: () { Navigator.pop(context); },),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body:const SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              curve(),
              //Heading Name
              Center(child: text(name: 'Basic Projects',fontWeight: FontWeight.bold,size: 40,color: Colors.pinkAccent,)),
              //SubPart


            ],
          ),
        )
    );
  }
}