import 'dart:ui';

void mouth(Canvas canvas, Rect rect) {
  // Figure.
  final double width = rect.shortestSide / 2.0;
  final double height = width * 0.5;
  final Offset center = rect.center + Offset(0.0, height);

  final RRect mouth = RRect.fromRectAndCorners(
    Rect.fromCenter(
      center: center,
      width: width,
      height: height,
    ),
    bottomLeft: Radius.circular(height),
    bottomRight: Radius.circular(height),
  );

  // Paint.
  final paint = Paint()
    ..color = const Color(0xFFFF0000);

  // Draw.
  canvas.drawRRect(mouth, paint);
}