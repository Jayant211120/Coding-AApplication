import 'package:flutter/material.dart';
import '../../../Bottom Navigation Bar/Home/homepage.dart';
import '../Interview_based_questions/interview_based_questions.dart';
import '../NIMCET/nimcet.dart';
import '../appinfo/appinfo.dart';
import '../../../Bottom Navigation Bar/compiler/compiler.dart';
import '../../../Bottom Navigation Bar/courses/courses.dart';
import '../how_to_use_app/howt to use this app.dart';
import '../policy/policy.dart';
import '../../../Bottom Navigation Bar/project/project.dart';
import '../setting/settings.dart';
import '../share/share.dart';
import '../../../Bottom Navigation Bar/tests/tests.dart';
class basic_questions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Drawer
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: const BoxDecoration(color: Colors.blue),
                child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/Images/jayant.jpeg'),
                          radius: 40,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: const Text(
                            'Developer:Jayant',
                            style: TextStyle(color: Colors.white,
                                fontSize: 20,
                                letterSpacing: 2,
                                height: 1),
                          ),),
                      ],
                    ))
            ),
            Column(
              children: [
                ListTile(
                  title: const Text('App Info'),
                  leading: const Icon(Icons.info),
                  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>appinfo()));},
                ),
                const Divider(color: Colors.blue,),
                ListTile(
                  title: const Text('NIMCET'),
                  leading: const Icon(Icons.book_online),
                  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>nimcet()));},
                ),
                const Divider(color: Colors.blue,),
                ListTile(
                  title: const Text('Basic Questions'),
                  leading: const Icon(Icons.book_outlined),
                  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>basic_questions()));},
                ),
                const Divider(color: Colors.blue,),
                ListTile(
                  title: const Text('Interview Based Questions'),
                  leading: const Icon(Icons.book_online_rounded),
                  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>interview_based_questions()));},
                ),
                const Divider(color: Colors.blue,),
                ListTile(
                  title: const Text('How to Use App'),
                  leading: const Icon(Icons.app_shortcut),
                  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>const how_to_use_app()));},
                ),
                const Divider(color: Colors.blue,),
                ListTile(
                  title: const Text('Policy'),
                  leading: const Icon(Icons.policy),
                  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>policy()));},
                ),
                const Divider(color: Colors.blue,),
                ListTile(
                  title: const Text('Settings'),
                  leading: const Icon(Icons.settings),
                  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>settings()));},
                ),
                const Divider(color: Colors.blue,),
                ListTile(
                  title: const Text('share'),
                  leading: const Icon(Icons.share),
                  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>share()));},
                ),
              ],
            )
          ],
        ),
      ),
      //Drawer End
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(gradient: LinearGradient(
              colors: [Colors.purpleAccent, Colors.redAccent])),
          width: MediaQuery
              .of(context)
              .size
              .width,
        ),
        title: const Center(child: Text('JCA', style: TextStyle(
          color: Colors.white,
          fontSize: 35,
        ))
        ),
        toolbarHeight: 100,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
          //Footer-----------------------
          Center(
              child: Container(
                margin: const EdgeInsets.all(10),
                child:IconButton(icon: const Icon(Icons.menu_book),
                  onPressed: () {
                    showModalBottomSheet(context: context,
                        builder: (BuildContext context) {
                          return SizedBox(
                              height: 500,
                              child:
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                          color: Colors.blueAccent,
                                        ),
                                        borderRadius: BorderRadius.circular(30)
                                    ),
                                    color: Colors.blue,
                                    elevation: 20,
                                    child: ListTile(
                                      mouseCursor: MouseCursor.defer,
                                      textColor: Colors.white,
                                      iconColor: Colors.white,
                                      title: const Text("Home"),
                                      leading: const Icon(Icons.home),
                                      onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>homepage()));},
                                    ),
                                  ),
                                  Card(
                                    shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                          color: Colors.blueAccent,
                                        ),
                                        borderRadius: BorderRadius.circular(30)
                                    ),
                                    color: Colors.blue,
                                    elevation: 20,
                                    child: ListTile(
                                      mouseCursor: MouseCursor.defer,
                                      textColor: Colors.white,
                                      iconColor: Colors.white,
                                      title: const Text("Courses"),
                                      leading: const Icon(Icons.book),
                                      onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>const courses()));},
                                    ),
                                  ),
                                  Card(
                                    shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                          color: Colors.blueAccent,
                                        ),
                                        borderRadius: BorderRadius.circular(30)
                                    ),
                                    color: Colors.blue,
                                    elevation: 20,
                                    child: ListTile(
                                      mouseCursor: MouseCursor.defer,
                                      textColor: Colors.white,
                                      iconColor: Colors.white,
                                      title: const Text("Projects"),
                                      leading: const Icon(Icons.production_quantity_limits_rounded),
                                      onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>const projects()));},
                                    ),
                                  ),
                                  Card(
                                    shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                          color: Colors.blueAccent,
                                        ),
                                        borderRadius: BorderRadius.circular(30)
                                    ),
                                    color: Colors.blue,
                                    elevation: 20,
                                    child: ListTile(
                                      mouseCursor: MouseCursor.defer,
                                      textColor: Colors.white,
                                      iconColor: Colors.white,
                                      title: const Text("Compiler"),
                                      leading: const Icon(Icons.tab),
                                      onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>const compiler()));},
                                    ),
                                  ),
                                  Card(
                                    shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                          color: Colors.blueAccent,
                                        ),
                                        borderRadius: BorderRadius.circular(30)
                                    ),
                                    color: Colors.blue,
                                    elevation: 20,
                                    child: ListTile(
                                      mouseCursor: MouseCursor.defer,
                                      textColor: Colors.white,
                                      iconColor: Colors.white,
                                      title: const Text("Test"),
                                      leading: const Icon(Icons.transfer_within_a_station),
                                      onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>const tests()));},
                                    ),
                                  )
                                ],
                              )

                          );
                        }); //end show model box
                  }, //onpress end
                ),
              )
          )

          //   --------------
        ],
      ),
      body:
      SingleChildScrollView(child:
      Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipPath(
            clipper: Curveshape(),
            child: Container(decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.purpleAccent, Colors.redAccent])),
              height: 70,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,),
          ),


        ],
      )
      ),
    );
  }
}

//Curve
class Curveshape extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();
    path.lineTo(0, height-50);
    path.quadraticBezierTo(width/2, height, width, height-50);
    path.lineTo(width, 0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}