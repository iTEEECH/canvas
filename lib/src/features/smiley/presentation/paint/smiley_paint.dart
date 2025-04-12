import 'package:flutter/widgets.dart';
import 'package:canvas/src/features/smiley/presentation/paint/paint.dart';

class SmileyPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Figure.
    final double shortestSide = size.shortestSide;
    final Rect rect = Rect.fromCircle(
      center: size.center(Offset.zero),
      radius: shortestSide / 2.0,
    );

    // Paint.
    final Paint paint = Paint();

    // Draw.
    canvas.saveLayer(rect, paint);
    face(canvas, rect);
    mouth(canvas, rect);
    eyes(canvas, rect);
    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}