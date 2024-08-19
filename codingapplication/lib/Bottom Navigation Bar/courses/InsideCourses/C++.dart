import 'package:codingapplication/ReusableCode/TextTiles.dart';
import 'package:codingapplication/ReusableCode/curve.dart';
import 'package:codingapplication/ReusableCode/drawer.dart';
import 'package:codingapplication/ReusableCode/text.dart';
import 'package:flutter/material.dart';
import '../../../ReusableCode/appbar.dart';

class Cplusplus extends StatelessWidget {
  final List name=[
    'What is C++','Features/Importance of C++','History of C++/Why use C++','Real Life Examples or Merits and Demerits','Tokens',
    'How to Setup C++ in Windows using Dev C++','Basic Syntax of C','Console Window','Compilation/Runtime Process','main/void function','Header Files and its types',
    'Using Namespace std','User-defined files','<stdlib> header file','Preprocessor Directives','Data-types and its types','Variables and Constant','Scope of Variables',
    'Literals','Different Symbols','Input/Output Statement','Format Specifier','Operators','Address and Dot Operator','Comments','Keywords','Special Keywords','Identifiers',
    'Functions and its types','Recursion','Call by Value','Call by Reference','Escape Sequence Character','ASCII Value','Type Casting','Conditional','Statements(if,else,switch)',
    'Conditional operators','Loops','Jumping Statements','Array and its types','Strings and its types','Structure','Union','D/W Structure and Union','Pointers',
    'Pointer Functions','Array Pointers','Enum','Storage Classes','Memory Management','File Handling','Exception Handling','Classes and Objects','Access Specifiers',
    'Abstraction and Encapsulation','Constructors','Inheritance','Scope Resolution Operator','Polymorphism','Overloading and Overriding','New and Delete','Interfaces',
    'Abstract Class','Instance Variables and Functions','Templates','Vectors','STL','Signal Handling','Multithreading','WebProgramming'
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

  Cplusplus({super.key});
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
              const Center(child: text(name: 'C++ Language',fontWeight: FontWeight.bold,size: 40,color: Colors.pinkAccent,)),
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