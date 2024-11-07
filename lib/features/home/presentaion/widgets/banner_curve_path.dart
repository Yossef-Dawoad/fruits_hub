import 'package:flutter/widgets.dart';

class BannerCurvePath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final startPoint = Offset(size.width / 2, 0);
    final curveCtrlPoint = Offset(size.width * 3 / 8, size.height / 2);
    Path path = Path()
      ..moveTo(startPoint.dx, startPoint.dy)
      ..quadraticBezierTo(
        curveCtrlPoint.dx,
        curveCtrlPoint.dy,
        startPoint.dx,
        size.height,
      )
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
