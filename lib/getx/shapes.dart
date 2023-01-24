import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Shapes extends StatelessWidget {
  const Shapes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        width: 400,
        child: ClipPath(
          clipper: newShape(),
          child: Container(
            color: Colors.red,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }

}
class newShape extends CustomClipper<Path> {
  var radius=10.0;
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width*0.2611667,size.height*0.1236111);
    path_0.lineTo(size.width*0.6919427,size.height*0.1294537);
    path_0.cubicTo(size.width*0.7493073,size.height*0.1302315,size.width*0.7955781,size.height*0.2131204,size.width*0.7955781,size.height*0.3151019);
    path_0.lineTo(size.width*0.7955781,size.height*0.7218148);
    path_0.cubicTo(size.width*0.7955781,size.height*0.8623148,size.width*0.7111927,size.height*0.9518981,size.width*0.6416198,size.height*0.8852593);
    path_0.lineTo(size.width*0.2108385,size.height*0.4727037);
    path_0.cubicTo(size.width*0.1149583,size.height*0.3808796,size.width*0.1522552,size.height*0.1221296,size.width*0.2611667,size.height*0.1236111);
    path_0.close();
    return path_0;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}


