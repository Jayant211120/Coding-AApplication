import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:portfolio/components/Text/percentage_text.dart';

import '../Button/buttons.dart';
import '../Text/normal_text.dart';
class ProjectsContainer extends StatelessWidget {
  const ProjectsContainer({super.key,
    required this.accuracy,
    required this.content,
    required this.imageLocation,
    required this.projectName,
    this.spanText='\n(In Production)',
  });
  final String imageLocation;
  final String projectName;
  final String accuracy;
  final String content;
  final String ? spanText;
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 20),
      height: 700,width: 500,
      decoration: BoxDecoration(
          border: GradientBoxBorder(
            gradient: LinearGradient(
                colors: [Colors.blueAccent,Colors.deepPurpleAccent]
            ),
            width: 5,
          ),
          borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: [
          Image.asset(imageLocation,height: 90,width: 100,),
          Text.rich(
              TextSpan(
                  text: projectName,
                  style: TextStyle(fontSize: 20),
                  children:[
                    TextSpan(text:spanText,style: TextStyle(color: Colors.blueAccent))
                  ]
              )
          ),
          PercentageText(text:accuracy),
          // Buttons(textButtonText: accuracy,
          //     textButtonColor:Colors.greenAccent,
          //     borderColor: Colors.greenAccent,
          //     boxShadowColor: Colors.transparent,
          //     buttonHeight: 60,
          //     buttonWidth:130),
          Padding(
            padding: EdgeInsets.all(20),
            child: NormalText(text:content
              ,color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
