import 'package:flutter/material.dart';
class curve extends StatelessWidget {
  const curve({super.key,this.height=70});
   final double ? height;
  // final Color ? colorTwo;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: Curveshape(),
      child: Container(decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.purpleAccent, Colors.redAccent])
           ),
        height: height,
        width: MediaQuery
            .of(context)
            .size
            .width,),
    );
  }
}
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