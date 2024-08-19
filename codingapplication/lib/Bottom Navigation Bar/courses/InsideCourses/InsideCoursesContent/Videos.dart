import 'package:codingapplication/ReusableCode/drawer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import '../../../../ReusableCode/appbar.dart';
class Videos extends StatefulWidget {
  const Videos({super.key});

  @override
  State<Videos> createState() => _CVideosState();
}

class _CVideosState extends State<Videos> {
  // WebViewController controller=WebViewController()..loadFlutterAsset('assets/index.html')..setJavaScriptMode(JavaScriptMode.unrestricted);
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
        body:SingleChildScrollView(
          child: Row(
            children: [
              // IconButton(onPressed:(){}, icon: const Icon(Icons.link_sharp)),
              Center(
                child:Link(uri:Uri.parse('https://jayant211120.github.io/C-videos/'),target:LinkTarget.blank,builder:(context,followLink){
                  return FloatingActionButton(
                    heroTag: "btn1",
                    elevation: 50,
                    backgroundColor: Colors.transparent,
                    onPressed:followLink,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset('assets/Images/C.jpg'),
                    ),
                  );
                })
              )
            ],
          ),
        )

        //WebViewWidget(controller: controller,)
    );
  }
}