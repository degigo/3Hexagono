import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Panal',
      home: MiPanal(),
    );
  }
}

class MiPanal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue,
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(30),
          child: ClipPath(
            clipper : MiClipper(),
            child: Image(
                image: NetworkImage("https://www.destreaming.es/wp-content/uploads/2020/11/pc_para_streaming_gaming.jpg")//Sustituir link solo con 'enlace de imagen'
            ),
          ),
        )
    );
  }
}

class MiClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    Path path = new Path()

      ..lineTo(size.width * 0.24, 0)
      ..lineTo(0, size.height * 0.5)
      ..lineTo(size.width * 0.24, size.height)
      ..lineTo(size.width * 0.76, size.height)
      ..lineTo(size.width, size.height * 0.5)
      ..lineTo(size.width * 0.76, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}