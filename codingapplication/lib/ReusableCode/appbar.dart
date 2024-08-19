import 'package:flutter/material.dart';

import 'footer/footer.dart';
class appbar extends StatelessWidget {
  const appbar({super.key,required this.text,required this.callback});
  final String text;
  final VoidCallback callback;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        decoration: const BoxDecoration(gradient: LinearGradient(
            colors: [Colors.purpleAccent, Colors.redAccent])),
        width: MediaQuery
            .of(context)
            .size
            .width,
      ),
      title:Center(child: Text(text, style: const TextStyle(
        color: Colors.white,
        fontSize: 35,
      ))
      ),
      toolbarHeight: 100,
      iconTheme: const IconThemeData(color: Colors.white),
      actions: [
        IconButton(onPressed: () {callback();}, icon:const Icon(Icons.arrow_back) ),
        //Footer-----------------------
        const footer()

        //   --------------
      ],
    );
  }
}
