import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:portfolio/components/Text/normal_text.dart';
import '../Text/percentage_text2.dart';
class Skills extends StatelessWidget {
  const Skills({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
         //Heading
         const Padding(
             padding:EdgeInsets.fromLTRB(0, 60, 0, 0),
             child:Text('Skills',style:TextStyle(
               fontSize: 40
             ),)
         ),
         //Allign two Column in Row
          SingleChildScrollView(
            child: Column(
              children: [
                  //First Column
            Center(
              child: Container(
                margin:const EdgeInsets.symmetric(vertical: 30),
                height: 900,width: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border:GradientBoxBorder(
                      gradient: LinearGradient(colors: [Colors.pinkAccent,Colors.blueAccent,Colors.greenAccent,Colors.deepPurpleAccent]),
                      width: 7
                  ),
                ),
                              child: Column(
                                children: [
                                  // Heading
                                  NormalText(text: 'Learning Skills'),
                                 // languages
                                 ListTile(leading:Image.asset('assets/Images/Skills_Images/flutter.png'),
                                   title: Text('Flutter'),
                                   contentPadding: EdgeInsets.all(20),
                                   trailing:PercentageText2(text: '90%')
                                 ),
                                 ListTile(leading:Image.asset('assets/Images/Skills_Images/react.png'),
                                                                      title: Text('MERN'),
                                   contentPadding:EdgeInsets.all(20),
                                     trailing:PercentageText2(text: '70%')
                                 ),
                                 ListTile(leading:Image.asset('assets/Images/Skills_Images/python.png'),
                                                                      title: Text('Python'),
                                   contentPadding: EdgeInsets.all(20),
                                     trailing:PercentageText2(text: '90%')
                                 ),
                                 ListTile(leading:Image.asset('assets/Images/Skills_Images/html.png'),
                                                                      title: Text('HCJPM'),
                                   contentPadding: EdgeInsets.all(20),
                                     trailing:PercentageText2(text: '80%')
                                 ),
                                 ListTile(leading:Image.asset('assets/Images/Skills_Images/networking.png'),
                                                                      title: Text('Networking'),
                                   contentPadding: EdgeInsets.all(20),
                                    trailing:PercentageText2(text:'70%')
                                 ),
                                 ListTile(leading:Image.asset('assets/Images/Skills_Images/cplusplus.png'),
                                                                      title: Text('C++'),
                                   contentPadding: EdgeInsets.all(20),
                                     trailing:PercentageText2(text:'60%')
                                 ),
                                 ListTile(leading:Image.asset('assets/Images/Skills_Images/maths.png'),
                                                                      title: Text('Probability and Statistics'),
                                   contentPadding: EdgeInsets.all(20),
                                     trailing:PercentageText2(text: '80%')
                                 ),
                                ],
                              ),
                            ),
                          ),

                         // Second Column
                  Container(
                    margin:const EdgeInsets.symmetric(vertical: 40),
                    height: 900,width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: GradientBoxBorder(
                          gradient: LinearGradient(colors: [Colors.pinkAccent,Colors.blueAccent,Colors.greenAccent,Colors.deepPurpleAccent]),
                          width: 7,
                      )
                    ),
                    child:Column(
                      children:[
                        // Heading
                        NormalText(text: 'Development Skills'),
                        // languages
                        ListTile(leading:Image.asset('assets/Images/Skills_Images/mobile_development.png'),
                            title:Text('App Development'),
                            contentPadding: EdgeInsets.all(20),
                            trailing:PercentageText2(text: '90%')
                        ),
                        ListTile(leading:Image.asset('assets/Images/Skills_Images/web_development.png'),
                            title: Text('Web Development'),
                          contentPadding: EdgeInsets.all(20),
                            trailing:PercentageText2(text: '92%')
                        ),
                        ListTile(leading:Image.asset('assets/Images/Skills_Images/machine_learning.png'),
                            title: Text('Machine Learning'),
                          contentPadding: EdgeInsets.all(20),
                            trailing:PercentageText2(text: '85%')
                        ),
                        ListTile(leading:Image.asset('assets/Images/Skills_Images/deep_learning.jpg'),
                            title: Text('Deep Learning'),
                          contentPadding: EdgeInsets.all(20),
                          trailing:PercentageText2(text: '82%')
                        ),
                        ListTile(leading:Image.asset('assets/Images/Skills_Images/ethical_hacking.png'),
                            title: Text('Ethical Hacking'),
                          contentPadding: EdgeInsets.all(20),
                          trailing:PercentageText2(text: '72%')
                        ),
                        ListTile(leading:Image.asset('assets/Images/Skills_Images/dsa.png'),
                            title: Text('DSA(Using C++)'),
                            contentPadding: EdgeInsets.all(20),
                            trailing:PercentageText2(text: '80%')
                        ),
                      ],
                    ),
                  ),
               ],
            ),
          )
        ],
      ),
    );
  }
}
