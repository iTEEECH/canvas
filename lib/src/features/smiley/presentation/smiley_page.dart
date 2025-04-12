import 'package:flutter/material.dart';
import 'package:canvas/src/features/smiley/presentation/paint/paint.dart';

class SmileyPage extends StatelessWidget {
  const SmileyPage({super.key});

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
             painter: SmileyPaint(),
           ),
         ),
       ),
     ),
   );
  }
}