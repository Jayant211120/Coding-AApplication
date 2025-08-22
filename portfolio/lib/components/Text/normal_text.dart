import 'package:flutter/material.dart';
class NormalText extends StatelessWidget {
  const NormalText({super.key,required this.text,this.fontSize=20,this.color=Colors.white});
  final String text;
  final double ? fontSize;
  final Color ? color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.fromLTRB(0, 60, 0, 20),
      child: Text(text,style:TextStyle(
          color:color,
          fontSize: fontSize
      ),),
    );
  }
}