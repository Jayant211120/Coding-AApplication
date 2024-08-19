import 'package:codingapplication/ReusableCode/TextTiles.dart';
import 'package:codingapplication/ReusableCode/curve.dart';
import 'package:codingapplication/ReusableCode/drawer.dart';
import 'package:codingapplication/ReusableCode/text.dart';
import 'package:flutter/material.dart';
import '../../../ReusableCode/appbar.dart';

class python extends StatelessWidget {
  final List name=[
    'What is Python','Features/Importance of Python','History of Python/Why use Python','Real Life Examples or Merits and Demerits',
    'IDLE in Python','How to Setup Python in Windows using VSCode','Basic Syntax of Python','Python Interpreter','Console Window','Comments','Docstring','main function','Modules and user-defined Modules','pip',
    'Data-types and its types','Variables and Constant','Scope of Variables',
    'Literals','Different Symbols','Input/Output Statement','Operators','Keywords','Special Keywords','Identifiers',
    'Functions and its types','Lambda Functions','Recursion','Call by Value','Call by Reference','Escape Sequence Character','Type Casting','Conditional','Statements(if,else)',
    'Conditional operators','Loops','Jumping Statements','Lists','Strings Formatting','Tuple','Sets','Dictionary',
    'Enum','Storage Classes','File Handling','Exception Handling','Classes and Objects','Access Specifiers',
    'Abstraction and Encapsulation','Constructors','Inheritance','Iterators','Collection','Polymorphism','Overloading and Overriding','New and Delete','Interfaces',
    'Abstract Class','Instance Variables and Functions',
  ];

  // final List callback=[const (),const Graphical(),const WebBrowser(),const Graph(),const LanguageConverter(),const QuizApp(),const DrawingApp(),const AttendanceSystem(),
  //   const PortfolioWebsite(),const FileDownloader(),const ConnectingDevices(),const ReDistribution()];

  final List leading=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,
    52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71];

  final List color=[
    Colors.blueAccent,Colors.indigo,Colors.pinkAccent,Colors.redAccent,Colors.orangeAccent,Colors.purpleAccent,Colors.deepPurple,Colors.indigo,Colors.pink,
    Colors.greenAccent,Colors.purple,Colors.pinkAccent,Colors.blueAccent,Colors.indigo,Colors.pinkAccent,Colors.redAccent,Colors.orangeAccent,Colors.purpleAccent,
    Colors.deepPurple,Colors.indigo,Colors.pink,Colors.greenAccent,Colors.purple,Colors.pinkAccent,Colors.blueAccent,Colors.indigo,Colors.pinkAccent,Colors.redAccent,
    Colors.orangeAccent,Colors.purpleAccent,Colors.deepPurple,Colors.indigo,Colors.pink,Colors.greenAccent,Colors.purple,Colors.pinkAccent,Colors.blueAccent,
    Colors.indigo,Colors.pinkAccent,Colors.redAccent,Colors.orangeAccent,Colors.purpleAccent,Colors.deepPurple,Colors.indigo,Colors.pink,Colors.greenAccent,
    Colors.purple,Colors.pinkAccent, Colors.purpleAccent,Colors.deepPurple,Colors.indigo,Colors.pink,Colors.greenAccent,Colors.purple,Colors.pinkAccent, Colors.purple
    ,Colors.pinkAccent, Colors.purpleAccent,Colors.deepPurple,Colors.blueAccent,Colors.indigo,Colors.pinkAccent,Colors.deepPurple,Colors.indigo,Colors.pink,
    Colors.greenAccent,Colors.purple,Colors.pinkAccent,Colors.blueAccent,Colors.indigo,Colors.pinkAccent
  ];

  python({super.key});
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
              const Center(child: text(name: 'Python',fontWeight: FontWeight.bold,size: 40,color: Colors.pinkAccent,)),
              // SubPart
              for(int i=0;i<name.length;i++)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: textTileView(text: name[i].toString(), callback: (){},
                    leading: leading[i].toString(),tileColor:color[i],),
                )
            ],
          ),
        )
    );
  }
}