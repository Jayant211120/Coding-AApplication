import 'package:flutter/material.dart';

//Elevated Button start

class elevatedButton extends StatelessWidget {
  //variables call in constructor
  const elevatedButton({super.key,
     required this.callBack,
     required this.backgroundColor,
     required this.foregroundColor,
     this.borderRadius=30,
     required this.text,
  });

  //Arguments Start
  final VoidCallback callBack;
  final Color backgroundColor;
  final Color foregroundColor;
  final String text;
  final double ? borderRadius;
  //Arguments End

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius:BorderRadius.circular(borderRadius!),
        child:Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.purple,
                ],
              )),
          child:ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: backgroundColor,foregroundColor: foregroundColor,shadowColor: Colors.transparent),
            onPressed: ()=>{
            callBack()
          },child: borderRadius!=null?Column(children: [
            Text(text)
          ],):Text(text),
          ),
        )
    );
  }
}

//Elevated Button End

//Floating Action Image Button Start

class floatingActionImageButton extends StatelessWidget {
   const floatingActionImageButton({super.key,
     required this.heroTag,
     required this.callback,
     this.elevationNumber=30,
     this.borderRadius=30,
     this.backgroundColor=Colors.transparent,
     required this.image,
     this.splashColor=Colors.blueGrey,
     this.hoverColor=Colors.black26
   });
  final String  heroTag;
  final double ? elevationNumber;
  final Color ? backgroundColor;
  final VoidCallback callback;
  final double ? borderRadius;
  final String  image;
  final Color ? splashColor;
   final Color ? hoverColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.all(20),
    child: SizedBox(
      height: 100,width:100,
      child: FloatingActionButton(
        heroTag: heroTag,
        elevation: elevationNumber,
        backgroundColor:backgroundColor,
        splashColor: splashColor,
        hoverColor: hoverColor,
        onPressed:(){callback();},
       child:ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius!),
          child:borderRadius!=null?Column(children:[
           Image.asset(image),
          ]): Image.asset(image,fit: BoxFit.cover),
        ),
      ),
    ),
   );
  }
}

//Floating Action Image Button End

//Floating Action Button Start

class floatingActionTextButton extends StatelessWidget {
  const floatingActionTextButton({super.key,
    this.heroTag='btn21',
    required this.callback,
    this.elevationNumber=30,
    this.borderRadius=30,
    required this.backgroundColor,
    required this.foregroundColor,
    this.text='Enter Text',
    this.splashColor=Colors.pinkAccent,
    this.hoverColor=Colors.blue
  });
  final String ? heroTag;
  final double ? elevationNumber;
  final Color backgroundColor;
  final Color foregroundColor;
  final VoidCallback callback;
  final double ? borderRadius;
  final String ? text;
  final Color ? splashColor;
  final Color ? hoverColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: FloatingActionButton(
        heroTag: heroTag,
        elevation: elevationNumber,
        backgroundColor:backgroundColor,
        foregroundColor:foregroundColor,
        splashColor: splashColor,
        hoverColor: hoverColor,
        onPressed:(){callback();},
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius!),
          child:borderRadius!=null?Column(children:[
            Text(text!,textAlign: TextAlign.center,style: const TextStyle(height: 3.5,fontSize: 14,fontWeight: FontWeight.bold,),),
          ]): Text(text!,textAlign: TextAlign.center,style: const TextStyle(height: 3.5,fontSize: 14,fontWeight: FontWeight.bold,),),
        ),
      ),
    );
  }
}
