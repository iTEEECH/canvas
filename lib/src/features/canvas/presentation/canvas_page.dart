import 'package:flutter/material.dart';
import 'package:canvas/src/features/canvas/presentation/smiley/smiley.dart';

class CanvasPage extends StatelessWidget {
  const CanvasPage({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: SafeArea(
       child: Padding(
         padding: const EdgeInsets.symmetric(
           horizontal: 20.0,
           vertical: 40.0,
         ),
         child: ConstrainedBox(
           constraints: BoxConstraints.expand(),
           child: CustomPaint(
             painter: Smiley(),
           ),
         ),
       ),
     ),
   );
  }
}