import 'package:codingapplication/ReusableCode/TextTiles.dart';
import 'package:codingapplication/ReusableCode/curve.dart';
import 'package:codingapplication/ReusableCode/drawer.dart';
import 'package:codingapplication/ReusableCode/text.dart';
import 'package:flutter/material.dart';
import '../../../ReusableCode/appbar.dart';
import 'Advance Projects/Graph.dart';
import 'Advance Projects/connecting_devices.dart';
import 'Advance Projects/drawing_app.dart';
import 'Advance Projects/file_downloader.dart';
import 'Advance Projects/graphical.dart';
import 'Advance Projects/language_converter.dart';
import 'Advance Projects/portfolio_Website.dart';
import 'Advance Projects/quiz_app.dart';
import 'Advance Projects/re_distrbution.dart';
import 'Advance Projects/snake_game.dart';
import 'Advance Projects/attendance_system.dart';
import 'Advance Projects/web_browser.dart';
class AdvanceProjects extends StatelessWidget {
  final List name=['Snake Game using Python','Graphical Project using Python','Web Browser using Python','Graph using Python','Language Converter(hi to en)using Python','QuizApp'
  'using Python','Drawing App using Python','Attendance System for School/College','Portfolio Website using HTML,CSS,JS','Any file downloader website',
  'Connection Devices through IP','Re-distribution of Networking'];

  final List callback=[const SnakeGame(),const Graphical(),const WebBrowser(),const Graph(),const LanguageConverter(),const QuizApp(),const DrawingApp(),const AttendanceSystem(),
    const PortfolioWebsite(),const FileDownloader(),const ConnectingDevices(),const ReDistribution()];

  final List leading=[1,2,3,4,5,6,7,8,9,10,11,12];

  final List color=[
    Colors.blueAccent,Colors.indigo,Colors.pinkAccent,Colors.redAccent,Colors.orangeAccent,
    Colors.purpleAccent,Colors.deepPurple,Colors.indigo,Colors.pink,Colors.greenAccent,Colors.purple,Colors.pinkAccent,
  ];
  AdvanceProjects({super.key});
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
              const Center(child: text(name: 'Advance Projects',fontWeight: FontWeight.bold,size: 40,color: Colors.pinkAccent,)),
              //SubPart
              for(int i=0;i<name.length;i++)
              Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: textTileView(text: name[i].toString(), callback: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>callback[i]));},
                  leading: leading[i].toString(),tileColor:color[i],),
              )
            ],
          ),
        )
    );
  }
}