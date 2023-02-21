import 'package:flutter/material.dart';

class MovieTheaterScreen extends StatelessWidget {
  const MovieTheaterScreen({
    Key? key,
    required this.image,
    required this.maxWidth,
    required this.maxHeight,
  }) : super(key: key);

  final String image;
  final double maxWidth;
  final double maxHeight;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateX(.8),
          transformAlignment: Alignment.topCenter,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: maxHeight * .025,
          height: maxHeight * .03,
          width: maxWidth * .5,
          child: const CustomPaint(
            painter: MovieScreenLinePainter(),
          ),
        ),
      ],
    );
  }
}

class MovieScreenLinePainter extends CustomPainter {
  const MovieScreenLinePainter();
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black38
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.5;

    final h = size.height;
    final w = size.width;

    final path = Path()
      ..moveTo(0, h)
      ..quadraticBezierTo(w * 0.44, h * 0.57, w * 0.5, h * 0.6)
      ..quadraticBezierTo(w * 0.5, h * 0.6, w, h);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
