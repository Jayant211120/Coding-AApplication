import 'dart:async';
import 'package:codingapplication/form/registration_form.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _MyAppState();
}

class _MyAppState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
   Timer(const Duration(seconds: 5),()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>registration())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       body:Center(child: Lottie.asset('assets/Splash/splash.json',))
    );

  }
}


