import 'package:canvas/src/smiley/smiley.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example of custom paint.',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 40.0,
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints.expand(),
              child: CustomPaint(
                key: UniqueKey(),
                painter: SmileyPaint(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
