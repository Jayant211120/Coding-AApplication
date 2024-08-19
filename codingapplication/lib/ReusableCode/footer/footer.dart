import 'package:codingapplication/Bottom%20Navigation%20Bar/compiler/compiler.dart';
import 'package:codingapplication/Bottom%20Navigation%20Bar/courses/courses.dart';
import 'package:codingapplication/Bottom%20Navigation%20Bar/project/project.dart';
import 'package:codingapplication/Bottom%20Navigation%20Bar/tests/tests.dart';
import 'package:codingapplication/ReusableCode/footer/card.dart';
import 'package:flutter/material.dart';
import '../../Bottom Navigation Bar/Home/homepage.dart';
class footer extends StatelessWidget {
  const footer({super.key,this.margin=10});
  final double ? margin;
  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Container(
          margin: EdgeInsets.all(margin!),
          child:IconButton(icon: const Icon(Icons.menu_book),
            onPressed: () {
              showModalBottomSheet(backgroundColor: Colors.black26,context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                        height: 500,
                        child:
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            card(text: 'Home',callback: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>homepage()));},),
                            card(text: 'Courses', callback: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>const courses()));},),
                            card(text: 'Compiler', callback: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>const compiler()));},),
                            card(text: 'Projects', callback: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>const projects()));},),
                            card(text: 'Tests', callback: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>const tests()));},),
                          ],
                        )
                    );
                  }); //end show model box
            }, //onpress end
          ),
        )
    );
  }
}
