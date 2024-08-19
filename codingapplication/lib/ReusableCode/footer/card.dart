import 'package:flutter/material.dart';
class card extends StatelessWidget {
  const card({super.key,this.insideColor=Colors.blueAccent,required this.callback,required this.text});
  final Color insideColor;
  final VoidCallback ? callback;
  final String text;
  @override
  Widget build(BuildContext context) {
    return  Card(
      shape: RoundedRectangleBorder(
          side:BorderSide(
            color: insideColor,
          ),
          borderRadius: BorderRadius.circular(30)
      ),
      color: Colors.blue,
      elevation: 20,
      child: ListTile(
        mouseCursor: MouseCursor.defer,
        textColor: Colors.white,
        iconColor: Colors.white,
        title:Text(text),
        leading: const Icon(Icons.home),
        onTap: (){callback!();},
      ),
    );
  }
}
