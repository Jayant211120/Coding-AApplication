import 'package:flutter/material.dart';
import '../Drawer/Basic_questions/basic_questions.dart';
import '../Drawer/Interview_based_questions/interview_based_questions.dart';
import '../Drawer/appinfo/appinfo.dart';
import '../Drawer/how_to_use_app/howt to use this app.dart';
import '../Drawer/policy/policy.dart';
import '../Drawer/setting/settings.dart';
import '../Drawer/share/share.dart';
class drawer extends StatelessWidget {
  const drawer({super.key,this.boxColor=Colors.indigo});
  final Color ? boxColor;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.indigo,
      child: ListView(
        children: [
          DrawerHeader(
              decoration:BoxDecoration(color: boxColor),
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
                  title: const Text('App Info',style: TextStyle(color: Colors.white),),
                  leading: const Icon(Icons.info,color: Colors.white),
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>appinfo()));}
              ),
              const Divider(color: Colors.white,),
              ListTile(
                title: const Text('Basic Questions',style: TextStyle(color: Colors.white)),
                leading: const Icon(Icons.book_outlined,color: Colors.white),
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>basic_questions()));},
              ),
              const Divider(color: Colors.white,),
              ListTile(
                title: const Text('Interview Based Questions',style: TextStyle(color: Colors.white)),
                leading: const Icon(Icons.book_online_rounded,color: Colors.white),
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>interview_based_questions()));},
              ),
              const Divider(color: Colors.white),
              ListTile(
                title: const Text('How to Use App',style: TextStyle(color: Colors.white)),
                leading: const Icon(Icons.app_shortcut,color: Colors.white),
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>const how_to_use_app()));},
              ),
              const Divider(color: Colors.white),
              ListTile(
                title: const Text('Policy',style: TextStyle(color: Colors.white)),
                leading: const Icon(Icons.policy,color: Colors.white,),
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>const policy()));},
              ),
              const Divider(color: Colors.white),
              ListTile(
                title: const Text('Settings',style: TextStyle(color: Colors.white)),
                leading: const Icon(Icons.settings,color: Colors.white),
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>const settings()));},
              ),
              const Divider(color: Colors.white),
              ListTile(
                title: const Text('Share',style: TextStyle(color: Colors.white)),
                leading: const Icon(Icons.share,color: Colors.white),
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>share()));},
              ),
              const Divider(color: Colors.white),
              ListTile(
                title: const Text('Exit',style: TextStyle(color: Colors.white)),
                leading: const Icon(Icons.exit_to_app,color: Colors.white),
                onTap: () {Navigator.pop(context);},
              ),
            ],
          )
        ],
      ),
    );
  }
}
