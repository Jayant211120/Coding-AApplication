import 'package:codingapplication/ReusableCode/Buttons.dart';
import 'package:codingapplication/form/registration_form.dart';
import 'package:flutter/material.dart';
import '../../../Bottom Navigation Bar/Home/homepage.dart';
void main() {
  runApp(login());
}
class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:Select()
    );
  }
}
class Select extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title:const Center(child: Text('JCA', style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              shadows:[Shadow(color: Colors.blue,offset:Offset(2, 2),blurRadius: 30)]
          ))
          ),
          toolbarHeight: 150,
        ),
        body:SingleChildScrollView(
          child:
          Column(
              children: [
                Row(
                    children:[
                      ClipPath(
                        clipper: Curveshape(),
                        child: Container(decoration: const BoxDecoration(gradient: LinearGradient(colors: [Colors.pinkAccent,Colors.redAccent])),height: 100,width: 180,),
                      ),
                      ClipPath(
                        clipper: Curveshape(),
                        child: Container(decoration: const BoxDecoration(gradient: LinearGradient(colors: [Colors.pinkAccent,Colors.redAccent])),height: 100,width: 170,),
                      ),
                    ]
                ),
                const Text('Login Form',style: TextStyle(
                    fontSize: 25,
                    // backgroundColor: Colors.blue,
                    color: Colors.purple
                ),),
                //Now start the form part
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 350,height: 80,
                      child:TextFormField(
                        maxLength: 100,
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: Colors.blue,
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.mail),
                            prefixIconColor: Colors.purple,
                            label:const Text('E-Mail',style: TextStyle(color: Colors.purple),),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(color:Colors.purple)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(color: Colors.blue)
                            )
                        ),
                      ),),
                    SizedBox(width: 350,height: 80,
                      child:TextFormField(
                        maxLength: 100,
                        keyboardType: TextInputType.visiblePassword,
                        cursorColor: Colors.blue,
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.password),
                            prefixIconColor: Colors.purple,
                            label:const Text('Password',style: TextStyle(color: Colors.purple),),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(color:Colors.purple)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(color: Colors.blue)
                            )
                        ),
                      ),),
                    //Register button
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Login Button
                          elevatedButton(backgroundColor: Colors.transparent, foregroundColor: Colors.white, text: 'Login',
                            callBack: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>homepage()));},),

                          // Register Button
                          elevatedButton(backgroundColor: Colors.transparent, foregroundColor: Colors.white, text: 'Register',
                            callBack: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>registration()));},)

                        ]),
                  ])//Column end of sized box
          ])
        )
    );
  }
}
//Create class for curve shape
class Curveshape extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    Path path=Path();
    path.quadraticBezierTo(0, size.height, size.height, 0);
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}



