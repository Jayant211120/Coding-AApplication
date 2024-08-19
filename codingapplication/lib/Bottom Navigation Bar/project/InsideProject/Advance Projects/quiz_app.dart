import 'package:codingapplication/Bottom%20Navigation%20Bar/project/InsideProject/BasicProject.dart';
import 'package:codingapplication/ReusableCode/curve.dart';
import 'package:codingapplication/ReusableCode/drawer.dart';
import 'package:codingapplication/ReusableCode/text.dart';
import 'package:flutter/material.dart';
import '../../../../ReusableCode/appbar.dart';
import '../AdvanceProject.dart';
class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

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
              const Center(child: text(name: 'Projects',fontWeight: FontWeight.bold,size: 40,color: Colors.pinkAccent,)),

              //SubPart
              Wrap(children:[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const BasicProjects()));},
                    child: Image.asset('assets/Images/minorprojects.webp'),
                  ),
                ),
              ],
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: text(name:'  Basic/Console Programs/Projects',fontWeight:FontWeight.bold,),
              ),
              Wrap(
                  children:[ Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>AdvanceProjects()));},
                      child: Image.asset('assets/Images/majorproject.png'),
                    ),
                  ),
                  ]),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: text(name:'  Advance/Real Life Projects',fontWeight:FontWeight.bold,),
              ),
            ],
          ),
        )
    );
  }
}