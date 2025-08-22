import 'package:flutter/material.dart';
import '../PDF/pdf.dart';
class Buttons extends StatelessWidget {
  const Buttons({super.key,
    required this.textButtonText,
    required this.textButtonColor,
    required this.borderColor,
    required this.boxShadowColor,
    required this.buttonHeight,
    required this.buttonWidth
  });
  final String textButtonText;
  final Color textButtonColor;
  final Color borderColor;
  final Color boxShadowColor;
  final double buttonHeight;
  final double buttonWidth;
  @override
  Widget build(BuildContext context) {
    // Decoration of Container
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 2),
      height: buttonHeight,width: buttonWidth,
      decoration:BoxDecoration(
        boxShadow: [BoxShadow(color:boxShadowColor.withOpacity(0.3),spreadRadius: 5,blurRadius: 5,offset: const Offset(0, 2) ),],
        border: Border.all(
          color: borderColor,
          width: 3,
        ),
        shape: BoxShape.rectangle,
        color:Colors.transparent,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),

      // Text Button for Text written in button
      child:TextButton(onPressed: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>Pdf()));
      }, child:Text(textButtonText,style: TextStyle(color:textButtonColor)),
      ),
    );
  }
}