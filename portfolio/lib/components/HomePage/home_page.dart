import 'package:flutter/material.dart';
import 'package:portfolio/components/Button/buttons.dart';
import 'package:portfolio/components/TypingText/typing_text.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key,this.content='Update Later',this.content2="I'm"});
  final String ? content;
  final String ? content2;
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
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

          // Text
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: Text('Hi,my name is',style: TextStyle(
                color: Colors.greenAccent,
                fontSize: 20
            ),),
          ),

          // Name
          const TypingText2(list: ['Jayant'],fontsize: 50,color: Colors.white,),

          // Content
          Text(content2!
            ,style: const TextStyle(
                color: Colors.grey,
                fontSize: 20
            ),),

          // Typing Text automatically
          const TypingText2(list: ['Software Engineer','Web Developer','Mobile Application Developer','Machine-Learning Engineer','Deep-Learning Engineer']),

          // Content2
          Text(content!,style: const TextStyle(color: Colors.grey,fontSize: 20),),

          //Button
          const Buttons(
              textButtonText:'Resume',
              textButtonColor: Colors.greenAccent,
              borderColor:Colors.greenAccent,
              boxShadowColor:Colors.greenAccent,
              buttonHeight: 50,
              buttonWidth:90
          )
        ],
      ),
    );
  }
}
