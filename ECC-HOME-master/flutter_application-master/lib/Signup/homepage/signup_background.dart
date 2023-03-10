import 'package:flutter/material.dart';

class SignUpBackground extends StatelessWidget {
  final screenHeight;

  const SignUpBackground({Key? key, @required this.screenHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return ClipPath(
      clipper: BottomShapeClipper(),
      child: Container(
        // height: screenHeight * 0.5,
        // //color: themeData.primaryColor,
        // decoration: const BoxDecoration(
        //     gradient: LinearGradient(
        //         colors: [
        //           const Color(0xFFefd5ff),
        //           const Color(0xFF515ada),
        //         ],
        //         begin: Alignment.topCenter,
        //         end: Alignment.bottomCenter,
        //         stops: [0.0, 1.0],
        //         tileMode: TileMode.clamp),
        //   ),
        // Container(
        height: screenHeight * 0.5,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                 Color.fromARGB(255, 86, 221, 210),
                  Color.fromARGB(255, 51, 63, 225),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                //colors: <Color>[Color.fromARGB(255, 161, 22, 186), Colors.blue])),
      ),
    ),
    ),
    );// );
  }
}

class BottomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    Offset curveStartPoint = Offset(0, size.height * 0.85);
    Offset curveEndPoint = Offset(size.width, size.height * 0.85);
    path.lineTo(curveStartPoint.dx, curveStartPoint.dy);
    path.quadraticBezierTo(
        size.width / 2, size.height, curveEndPoint.dx, curveEndPoint.dy);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
