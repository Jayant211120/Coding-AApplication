import 'package:flutter/material.dart';
import 'package:portfolio/components/Text/normal_text.dart';
import '../TypingText/typing_text.dart';
class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding:const EdgeInsets.symmetric(vertical: 50,horizontal: 10),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image customization
            Container(
              decoration: const BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.green,style: BorderStyle.solid),
                      bottom: BorderSide(color:Colors.green),
                      left: BorderSide(color: Colors.green),
                      right: BorderSide(color:Colors.green)
                  ),
                  shape: BoxShape.rectangle,
                  color:Colors.transparent,
                  borderRadius: BorderRadius.only(bottomLeft:Radius.circular(50),bottomRight: Radius.circular(50))
              ),
              child: ClipRRect(borderRadius:const BorderRadius.only(bottomRight:Radius.circular(50),bottomLeft:Radius.circular(50)),
                  child:Image.asset('assets/Images/logo.jpg')
              ),
            ),

            // Heading
            const NormalText(text: 'About Me'),

            // Name
            const TypingText2(list: ['Jayant'],fontsize: 50,color: Colors.greenAccent,),

            // Content
            const Text('I was completed my bachelors in computer application.'
                "currently i am pursuing my master degree in computer application."
                "I'm interested in mobile app development,"
                'website development and ai(artificial intelligence).My main focus is,to '
                'create awesome mobile application or websites '
                'with ai integration.',
              style:TextStyle(color: Colors.grey,fontSize: 20),
            ),
          ]
      ),
    );
  }
}
