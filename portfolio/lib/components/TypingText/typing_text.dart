import 'package:flutter/material.dart';
import 'package:typing_text/typing_text.dart';
class TypingText2 extends StatelessWidget {
  const TypingText2({super.key,required this.list,this.color=Colors.greenAccent,this.fontsize=20});
  final List<String> list;
  final Color? color;
  final double ? fontsize;
  @override
  Widget build(BuildContext context) {
    return TypingText(
      words:list,
      letterSpeed: const Duration(milliseconds: 100),
      wordSpeed: const Duration(milliseconds:1400),
      style: TextStyle(
       color:color,
       fontSize: fontsize
      ),
    );
  }
}
