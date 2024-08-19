import 'package:flutter/material.dart';

class textTileView extends StatelessWidget {
  const textTileView({super.key,required this.text,required this.callback, required this.leading,this.tileColor=Colors.blue});
  final VoidCallback callback;
  final String text;
  final String leading;
  final Color ? tileColor;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(5),
      child:ListTile(
        horizontalTitleGap: 30,
        minVerticalPadding: 30,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Colors.black),
        ),
        title: Text(text),trailing: const Icon(Icons.arrow_forward),leading: Text(leading,style: const TextStyle(fontSize: 20)),tileColor: tileColor,iconColor: Colors.white,
        textColor: Colors.white,titleTextStyle: const TextStyle(fontSize: 20),
        onTap: (){
           callback();
      },
      ),
    );
  }
}


// Expansion tile
class expansionTile extends StatelessWidget {
  const expansionTile({super.key,required this.leadingNumber,required this.collapsedBackgroundColor,
    required this.titleBackgroundColor,required this.tileName,required this.text});
 final String tileName;
 final String text;
 final String leadingNumber;
 final Color titleBackgroundColor;
 final Color collapsedBackgroundColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ExpansionTile(title:
      Text(tileName,style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white
      ),),
        leading:Text(leadingNumber,style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),),
        backgroundColor:titleBackgroundColor,
        collapsedBackgroundColor: collapsedBackgroundColor,
        iconColor: Colors.white,
        shape: RoundedRectangleBorder(
            side:const BorderSide(color:Colors.black),
            borderRadius: BorderRadius.circular(20)
        ),

        collapsedShape: RoundedRectangleBorder(
            side:const BorderSide(color:Colors.black),
            borderRadius: BorderRadius.circular(20)
        ),
        collapsedIconColor: Colors.white,
        tilePadding: const EdgeInsets.all(30),
        textColor: Colors.white,
        children:[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(text,style:const TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.justify,),
          )
        ]
      ),
    );
  }
}

// Expansion Tile With Image Start
class expansionTileWithImage extends StatelessWidget {
  const expansionTileWithImage({super.key,required this.leadingNumber,required this.collapsedBackgroundColor,
    required this.titleBackgroundColor,required this.tileName,required this.text,required this.imageName});
  final String tileName;
  final String text;
  final String leadingNumber;
  final String imageName;
  final Color titleBackgroundColor;
  final Color collapsedBackgroundColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ExpansionTile(title:
      Text(tileName,style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white
      ),),
          leading:Text(leadingNumber,style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),),
          backgroundColor:titleBackgroundColor,
          collapsedBackgroundColor: collapsedBackgroundColor,
          iconColor: Colors.white,
          shape: RoundedRectangleBorder(
              side:const BorderSide(color:Colors.black),
              borderRadius: BorderRadius.circular(20)
          ),

          collapsedShape: RoundedRectangleBorder(
              side:const BorderSide(color:Colors.black),
              borderRadius: BorderRadius.circular(20)
          ),
          collapsedIconColor: Colors.white,
          tilePadding: const EdgeInsets.all(30),
          textColor: Colors.white,
          children:[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(text,style:const TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.justify,),
            ),
            Center(
              child:Image.asset(imageName)
            )
          ]
      ),
    );
  }
}
// Expansion Tile With Image End
