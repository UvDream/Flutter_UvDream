import 'package:flutter/material.dart';

class WaveCurve extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('波浪曲线'),
      ),
      body: ClipPath(
        clipper: WavePage(),
        child: Container(
          height: 200,
          color: Colors.red,
        ),
      ),
    );
  }
}

class WavePage extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
      path.lineTo(0, size.height-20);
      var firstControlPoint =Offset(size.width/4,size.height);
      var firstEndPoint = Offset(size.width/2.25,size.height-30);

      path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

      var secondControlPoint = Offset(size.width/4*3,size.height-80);
      var secondEndPoint = Offset(size.width,size.height-40);

      path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);

      path.lineTo(size.width, size.height-40);
      path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
