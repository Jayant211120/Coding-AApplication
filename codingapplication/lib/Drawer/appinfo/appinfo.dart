import 'package:codingapplication/ReusableCode/curve.dart';
import 'package:codingapplication/ReusableCode/drawer.dart';
import 'package:flutter/material.dart';

import '../../ReusableCode/appbar.dart';
class appinfo extends StatelessWidget {
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
          children: [
            const curve(),
            Wrap(
              children: [
              Padding(
                  padding: const EdgeInsets.all(20),
                  child:Container(
                    // width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [Colors.purpleAccent,Colors.redAccent]),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child:const Text('Name\n CodingApplication',style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,
                    ),) ,
                  )
              ),
                Padding(
                    padding: const EdgeInsets.all(20),
                    child:Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [Colors.purpleAccent,Colors.redAccent]),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child:const Text('CPU Required\n Any type of CPU',style: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,
                      )) ,
                    )

                ),
            ],),
            Wrap(
              children: [
                Padding(
                    padding: const EdgeInsets.all(10),
                    child:Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [Colors.purpleAccent,Colors.redAccent]),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child:const Text('Storage\nMax:300MB',style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,
                    ),) ,
                    )

                ),
                Padding(
                    padding: const EdgeInsets.all(10),
                    child:Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [Colors.purpleAccent,Colors.redAccent]),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child:const Text('Platform\nAny:Android/\nWin/IOS/MacOS/Linux',style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,
                    ),) ,
                    )
                ),
              ],),
            Wrap(
              children: [
                Padding(
                    padding: const EdgeInsets.all(10),
                    child:Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [Colors.purpleAccent,Colors.redAccent]),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child:const Text('Version\n1.0',style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,
                    ),) ,
                    )

                ),
                Padding(
                    padding: const EdgeInsets.all(10),
                    child:Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [Colors.purpleAccent,Colors.redAccent]),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child:const Text('Battery Use\nMinimum',style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,
                    ),) ,
                    )
                ),
              ],)
          ],
        ),
      )
    );
  }
}