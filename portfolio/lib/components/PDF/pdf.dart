import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class Pdf extends StatelessWidget {
  const Pdf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.blueAccent,
        leading: IconButton(onPressed:(){Navigator.pop(context);},icon:Icon(Icons.arrow_back_ios_new_outlined),color: Colors.white,),
      ) ,
      body: SfPdfViewer.asset('assets/PDF/Jayant-Resume.pdf'),
    );
  }
}
