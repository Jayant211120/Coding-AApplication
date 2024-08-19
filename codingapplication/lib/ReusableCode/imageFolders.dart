import 'package:codingapplication/ReusableCode/curve.dart';
import 'package:codingapplication/ReusableCode/text.dart';
import 'package:flutter/material.dart';
class ImageFolders extends StatelessWidget {
  final String name;
  final String folderNameOne;
  final String folderNameTwo;
  final VoidCallback callbackOne;
  final VoidCallback callbackTwo;
  const ImageFolders({super.key,required this.name,required this.callbackOne,required this.callbackTwo,required this.folderNameOne,required this.folderNameTwo});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Heading Name
              Center(child: text(name: name,fontWeight: FontWeight.bold,size: 40,color: Colors.pinkAccent,)),

              //SubPart
              Wrap(children:[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: (){callbackOne();},
                    child: Image.asset('assets/Images/minorprojects.webp'),
                  ),
                ),
              ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: text(name:folderNameOne,fontWeight:FontWeight.bold,),
              ),
              Wrap(
                  children:[ Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: InkWell(
                      onTap: (){callbackTwo();},
                      child: Image.asset('assets/Images/majorproject.png'),
                    ),
                  ),
                  ]),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: text(name:folderNameTwo,fontWeight:FontWeight.bold,),
              ),
            ],
          ),
        );
  }
}