import 'package:carousel_slider/carousel_slider.dart';
import 'package:codingapplication/Bottom%20Navigation%20Bar/courses/InsideCourses/Basic_computer.dart';
import 'package:codingapplication/Bottom Navigation Bar/courses/InsideCourses/CSS.dart';
import 'package:codingapplication/Bottom Navigation Bar/courses/InsideCourses/HTML.dart';
import 'package:codingapplication/Bottom Navigation Bar/courses/InsideCourses/MYSQL.dart';
import 'package:codingapplication/Bottom Navigation Bar/courses/InsideCourses/Python.dart';
import 'package:codingapplication/Bottom Navigation Bar/courses/InsideCourses/javascript.dart';
import 'package:codingapplication/ReusableCode/Buttons.dart';
import 'package:codingapplication/ReusableCode/curve.dart';
import 'package:codingapplication/ReusableCode/drawer.dart';
import 'package:codingapplication/ReusableCode/footer/footer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
class homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      home: const InsideHomePage(),
    );
  }
}
class InsideHomePage extends StatelessWidget {
  const InsideHomePage({super.key});

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        drawer: const drawer(),
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
            actions: const [
              footer()
            ],
          ),
          body:
          SingleChildScrollView(child:
          Column(
            children: [
              const curve(),
            // Slider start
              ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  CarouselSlider(
                    items: [
                      //1st Image of Slider
                      Container(
                        margin: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: AssetImage("assets/Images/slider1.webp"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //2nd Image of Slider
                      Container(
                        margin: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: AssetImage("assets/Images/slider2.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //3rd Image of Slider
                      Container(
                        margin: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: AssetImage("assets/Images/slider6.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //4th Image of Slider
                      Container(
                        margin: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: AssetImage("assets/Images/slider5.webp"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //5th Image of Slider
                      Container(
                        margin: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: AssetImage("assets/Images/slider8.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                    ],
                    //Slider Container properties
                    options: CarouselOptions(
                      height: 280.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: const Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                    ),
                  ),
                ],
              ),
              //Slider End

            //Focus Point Start
              const Text('Focus Points',style:TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
                height: 5,
                )
              ),
            //Focus point end
              //Focus Point Items Start
              Wrap(
                spacing: 32,
                runSpacing: 16,
                children: [
                  floatingActionImageButton(callback: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>python()));},
                     heroTag: 'btn1',image: 'assets/Images/python.png'),
                  floatingActionImageButton(callback: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>html()));},
                      heroTag: 'btn2',image: 'assets/Images/html.png'),
                  floatingActionImageButton(callback: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>css()));},
                      heroTag: 'btn3',image: 'assets/Images/css3.png'),
                  floatingActionImageButton(callback: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>javascript()));},
                      heroTag: 'btn4',image: 'assets/Images/javascript.png'),
                  floatingActionImageButton(callback: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>mysql()));},
                      heroTag: 'btn5',image: 'assets/Images/mysql.png'),
                  floatingActionImageButton(callback: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>basic_computer()));},
                      heroTag: 'btn6',image: 'assets/Images/computer.png'),
                 ]),
              //Focus Point Items End

            //  Topic to be Covered start
              const Text('Topic Description',style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                  height: 5
              ),
              ),
              Wrap(
                spacing: 32,runSpacing: 16,
                children: [
                    Container(
                      decoration: BoxDecoration(gradient: const LinearGradient(colors: [Colors.blue,Colors.purple]),borderRadius: BorderRadius.circular(30)),
                      height: 100,width: 300,padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      child:const Text('Theory Content',textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,height: 3.5),),
                    ),
                  Container(
                    decoration: BoxDecoration(gradient: const LinearGradient(colors: [Colors.blue,Colors.purple]),borderRadius: BorderRadius.circular(30)),
                    height: 100,width: 300,padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    child:const Text('Video Content',textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,height: 3.5),),
                  ),
                  Container(
                    decoration: BoxDecoration(gradient: const LinearGradient(colors: [Colors.blue,Colors.purple]),borderRadius: BorderRadius.circular(30)),
                    height: 100,width: 300,padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    child:const Text('Basic to Advance Project',textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,height: 3.5),),
                  ),
                  Container(
                    decoration: BoxDecoration(gradient: const LinearGradient(colors: [Colors.blue,Colors.purple]),borderRadius: BorderRadius.circular(30)),
                    height: 100,width: 300,padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    child:const Text('Tests/Assignment',textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,height: 3.5),),
                  ),
                  Container(
                    decoration: BoxDecoration(gradient: const LinearGradient(colors: [Colors.blue,Colors.purple]),borderRadius: BorderRadius.circular(30)),
                    height: 100,width: 300,padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    child:const Text('Real Life Projects',textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,height: 3.5),),
                  ),
                ],
              ),
            //  Topic to be Covered End

            // Customers Reviews start
              const Text('Customer Reviews',style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
                height: 5
              ),
              ),
             ListView(
               padding: const EdgeInsets.symmetric(vertical: 20),
               scrollDirection: Axis.vertical,
               shrinkWrap: true,
               children: [
                 CarouselSlider(items: [
                   Container(
                     decoration: BoxDecoration(gradient: const LinearGradient(colors: [Colors.blue,Colors.purple]),borderRadius: BorderRadius.circular(30)),
                     height: 10,width: 300,padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                     child:const Text('[This app is very useful for me sir,because its covers various types of content for beginners as well as Advance student].\n"Thank You So Much Sir"\n'
                         'Rahul\n'
                         'MCA',
                         style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                   ),
                   Container(
                     decoration:BoxDecoration(gradient: const LinearGradient(colors: [Colors.blue,Colors.purple]),borderRadius: BorderRadius.circular(30)),
                     height: 10,width: 300,padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                     child:const Text('[Sir this app is very helpful because of other apps regarding coding cannot cover all types of courses just like this app;so its very helpful for me].\n'
                     '"Thank You Sir"\n'
                     'Virender\n'
                         'B.A',
                     style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                   ),
                 ],
                     options: CarouselOptions(
                       height: 300.0,
                       enlargeCenterPage: true,
                       autoPlay: true,
                       aspectRatio: 16 / 9,
                       autoPlayCurve: Curves.fastOutSlowIn,
                       enableInfiniteScroll: true,
                       autoPlayAnimationDuration: const Duration(milliseconds: 800),
                       viewportFraction: 0.8,
                     )
                 )

               ],
             ),
            // Customers Reviews End
            //   Contact for Payment start
              const Text(
                'Connect if any issue',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent,
                    height: 5
                ),
              ),

            Wrap(
                  spacing: 32,
                  runSpacing: 16,
                  children: [
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
                        child:SizedBox(
                          height: 90,width: 100,
                          child:Link(uri:Uri.parse('https://chat.whatsapp.com/JVAA4OyAlSq7ssFpyWE308'),target:LinkTarget.blank,builder:(context,followLink){
                            return  FloatingActionButton(
                              heroTag: "btn7",
                              elevation: 50,
                              backgroundColor: Colors.transparent,
                              // onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>'https://chat.whatsapp.com/JVAA4OyAlSq7ssFpyWE308'));},
                              onPressed: followLink,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset('assets/Images/whatsapp.jpeg'),
                              ),
                            );
                          },
                          ),
                          ),
                        ),
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
                        child:SizedBox(
                            height: 100,width: 100,
                            // child:Link(uri:Uri.parse('https://t.me/+ci4SGkjgUz00ZWY1'),target:LinkTarget.blank,builder:(context,followLink){
                            child:Link(uri:Uri.parse('https://youtube.com/shorts/gspczHkWDk8?feature=share'),target:LinkTarget.blank,builder:(context,followLink){
                            return FloatingActionButton(
                              heroTag: "btn8",
                              elevation: 50,
                              backgroundColor: Colors.transparent,
                              onPressed:followLink,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset('assets/Images/telegram.png'),
                              ),
                            );
                            })
                        )),
                   ]),
            //   Contact for Payment end
            ],
          )
          ),
      );
    }
  }