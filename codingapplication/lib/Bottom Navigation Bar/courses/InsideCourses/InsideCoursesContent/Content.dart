import 'package:codingapplication/ReusableCode/Buttons.dart';
import 'package:codingapplication/ReusableCode/appbar.dart';
import 'package:codingapplication/ReusableCode/curve.dart';
import 'package:codingapplication/ReusableCode/drawer.dart';
import 'package:flutter/material.dart';
import '../Basic_computer.dart';
import '../C++.dart';
import '../C.dart';
import '../CSS.dart';
import '../HTML.dart';
import '../Java.dart';
import '../MYSQL.dart';
import '../Networking.dart';
import '../PHP.dart';
import '../Python.dart';
import '../dsa.dart';
import '../javascript.dart';

class Content extends StatelessWidget {
  const Content({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Drawer
      drawer: const drawer(),
      //Drawer End
      appBar: AppBar(
        flexibleSpace:appbar(text: 'JCA', callback: () { Navigator.pop(context); },),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body:
      SingleChildScrollView(
          child:Column(
            children: [
              const curve(),
              //heading
              const Center(child:Text('Courses',style: TextStyle(
                fontSize: 40,
                color: Colors.pinkAccent,
                fontWeight: FontWeight.bold,
              ),
              ),
              ),

              //Content
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    floatingActionImageButton(heroTag: 'btn9', callback: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>C()));}, image: 'assets/Images/C.jpg'),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text('C',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  const Padding(
                  padding: EdgeInsets.fromLTRB(140, 0, 0, 0),
                  child: Text('C++',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                  floatingActionImageButton(heroTag: 'btn10', callback: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>Cplusplus()));}, image: 'assets/Images/c++.webp')
                ]),
              Row( mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    floatingActionImageButton(heroTag: 'btn11', callback: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>java()));}, image: 'assets/Images/java.png'),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text('Java',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ]),
              Row( mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    const Padding(
                      padding: EdgeInsets.fromLTRB(110, 0, 0, 0),
                      child: Text('Python',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    floatingActionImageButton(heroTag: 'btn12', callback: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>python()));}, image: 'assets/Images/python.png'),
                  ]),
              Row( mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    floatingActionImageButton(heroTag: 'btn13', callback: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>html()));}, image: 'assets/Images/html.png'),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text('HTML',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ]),
              Row( mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    const Padding(
                      padding: EdgeInsets.fromLTRB(140, 0, 0, 0),
                      child: Text('CSS',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    floatingActionImageButton(heroTag: 'btn14', callback: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>css()));}, image: 'assets/Images/css3.png'),
                  ]),
              Row( mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    floatingActionImageButton(heroTag: 'btn15', callback: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>javascript()));}, image: 'assets/Images/javascript.png'),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text('JavaScript',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ]),
              Row( mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    const Padding(
                      padding: EdgeInsets.fromLTRB(140, 0, 0, 0),
                      child: Text('PHP',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    floatingActionImageButton(heroTag: 'btn16', callback: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>php()));}, image: 'assets/Images/php.png'),
                  ]),
              Row( mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    floatingActionImageButton(heroTag: 'btn17', callback: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>mysql()));}, image: 'assets/Images/mysql.png'),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text('MySQL',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ]),
              Row( mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    const Padding(
                      padding: EdgeInsets.fromLTRB(130, 0, 0, 0),
                      child: Text('DSA',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    floatingActionImageButton(heroTag: 'btn18', callback: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>dsa()));}, image: 'assets/Images/dsa.png'),
                  ]),
              Row( mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    floatingActionImageButton(heroTag: 'btn19', callback: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>basic_computer()));}, image: 'assets/Images/computer.png'),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text('Computer',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ]),
              Row( mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    const Padding(
                      padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                      child: Text('Networking',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    floatingActionImageButton(heroTag: 'btn20', callback: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>Networking()));}, image: 'assets/Images/networking.png'),
                  ]),

            ],//Main Body Column children
          )
      ),
    );
  }
}