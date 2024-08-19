import 'package:codingapplication/ReusableCode/curve.dart';
import 'package:codingapplication/ReusableCode/drawer.dart';
import 'package:codingapplication/ReusableCode/imageFolders.dart';
import 'package:flutter/material.dart';
import '../../../ReusableCode/appbar.dart';
import 'InsideCourses/InsideCoursesContent/Content.dart';
import 'InsideCourses/InsideCoursesContent/Videos.dart';
class courses extends StatelessWidget {
  const courses({super.key});
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
              //SubPart
              ImageFolders(
                name: 'Language', callbackOne:(){Navigator.push(context, MaterialPageRoute(builder:(context)=>const Content()));},
                callbackTwo:(){Navigator.push(context, MaterialPageRoute(builder:(context)=>const Videos()));}, folderNameOne: ' Content', folderNameTwo: ' Videos',
              )
            ],
          ),
        )
    );
  }
}