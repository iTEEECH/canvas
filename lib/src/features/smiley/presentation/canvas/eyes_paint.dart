import 'dart:ui';

void eyes(Canvas canvas, Rect rect) {
  // Figure.
  final double shortestSide = rect.shortestSide;
  final eyeRadius = shortestSide / 10.0;
  final pupilRadius = eyeRadius / 4.0;
  final eyeSpacing = shortestSide / 4.0;

  // Draw.
  _draw(
    canvas,
    Offset(rect.center.dx - eyeSpacing, rect.topLeft.dy + shortestSide / 3.0),
    eyeRadius,
    pupilRadius,
  );
  _draw(
    canvas,
    Offset(rect.center.dx + eyeSpacing, rect.topLeft.dy + shortestSide / 3.0),
    eyeRadius,
    pupilRadius,
  );
}

void _draw(Canvas canvas, Offset center, double eyeRadius, double pupilRadius) {
  // Paint.
  final Paint eyes = Paint()
    ..color = const Color(0xFFFFFFFF);
  final Paint pupil = Paint()
    ..color = const Color(0xFF000000);

  // Draw.
  canvas.drawCircle(
    center,
    eyeRadius,
    eyes,
  );

  canvas.drawCircle(
    Offset(
      center.dx + eyeRadius / 4.0,
      center.dy - eyeRadius / 8.0,
    ),
    pupilRadius,
    pupil,
  );
}