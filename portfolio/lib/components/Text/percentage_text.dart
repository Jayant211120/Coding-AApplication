import 'package:flutter/material.dart';
class PercentageText extends StatelessWidget {
  const PercentageText({super.key,required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
    decoration: BoxDecoration(
    border: Border.all(color: Colors.greenAccent,width: 2),
    borderRadius: BorderRadius.circular(20)
    ),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Text(text,style: TextStyle(
        color: Colors.greenAccent,fontSize: 20),
        ),
    ),
    );
  }
}
