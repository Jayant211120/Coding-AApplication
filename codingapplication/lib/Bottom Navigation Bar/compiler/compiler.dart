import 'package:codingapplication/ReusableCode/drawer.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../../../ReusableCode/appbar.dart';
class compiler extends StatefulWidget {
  const compiler({super.key});

  @override
  State<compiler> createState() => _CVideosState();
}

class _CVideosState extends State<compiler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const drawer(),
        appBar:AppBar(
          flexibleSpace: appbar(text: 'JCA', callback: () {
            Navigator.pop(context);
          },),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: const Text('Hello'),
    );
  }
}