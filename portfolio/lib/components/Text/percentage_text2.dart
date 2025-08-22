import 'package:flutter/material.dart';
class PercentageText2 extends StatelessWidget {
  const PercentageText2({super.key,required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.greenAccent,width: 2),
          borderRadius: BorderRadius.circular(20)
      ),
      // child: Padding(
        // padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
        child: Padding(
          padding: EdgeInsets.all(7),
          child: Text(text,style: TextStyle(
              color: Colors.greenAccent,fontSize: 20),
          ),
        ),
      // ),
    );
  }
}
