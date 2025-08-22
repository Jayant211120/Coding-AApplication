import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/HomePage/home_page2.dart';
import 'package:portfolio/components/Projects/projects.dart';
import 'package:portfolio/components/Skills/skills.dart';
import 'components/HomePage/home_page.dart';
import 'components/TypingText/typing_text.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark
      ),
      home:const MainPage()
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}
class _MainPageState extends State<MainPage> {
  int _currentIndex=0;
  List menus=[
     // HomePage
     const HomePage(content: ',specialization in developing mobile applications or websites.\n'
         "Currently, I'm focused on AI(Artificial Intelligence) for increase the quality or efficiency of "
         "mobile application or websites."
     ),

     // About Us
      const HomePage2(),

     // Skills
     const Skills(),

     // Projects
     const Projects(),

     // Certificates
     // Padding(padding: EdgeInsets.all(50),child: Center(child: const Text('Not Available',style: TextStyle(color: Colors.white,fontSize: 60),))),

     // Internships
    // Padding(padding: EdgeInsets.all(50),child: Center(child: const Text('Not Available',style: TextStyle(color: Colors.white,fontSize: 60),))),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Column(
          children: [
            menus[_currentIndex]
          ],
        ),
      ),

      // NavigationBar
      bottomNavigationBar:CurvedNavigationBar(
       onTap: (int newIndex){
         setState(() {
           _currentIndex=newIndex;
         });
       },
       items: const [
        Icon(Icons.home,size: 30),
        Icon(Icons.face_sharp,size: 30),
        Icon(Icons.menu_book,size: 30),
        Icon(Icons.add_chart,size: 30),
      ],
       backgroundColor: Colors.black,
        color: Colors.deepPurpleAccent,
      ),
    );
  }
}

