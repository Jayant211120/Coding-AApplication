import 'package:flutter/material.dart';
class text extends StatelessWidget {
  const text({super.key,required this.name,this.fontWeight=FontWeight.normal,this.size=20,this.color=Colors.black,this.backgroundColor=Colors.transparent,this.letterSpacing=0});
  final String name;
  final double ?size;
  final FontWeight ?fontWeight;
  final Color ?backgroundColor;
  final Color ?color;
  final double ? letterSpacing;
  @override
  Widget build(BuildContext context) {
    return Text(
      name,textAlign: TextAlign.justify,style: TextStyle(
      fontSize: size,fontWeight: fontWeight,backgroundColor: backgroundColor,color: color,letterSpacing: letterSpacing
    ),
    );
  }
}
