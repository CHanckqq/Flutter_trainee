import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const AnimatedContainerApp());

class AnimatedContainerApp extends StatefulWidget {
  const AnimatedContainerApp({Key? key}) : super(key: key);

  @override
  _AnimatedContainerAppState createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<AnimatedContainerApp> {
  Color _color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: _color,
      body: Center(
        child: SizedBox(
          width: 10000.0,
          height: 10000.0,
          child: TextButton(
            // When the user taps the button
            onPressed: () {
              // Use setState to rebuild the widget with new values.
              setState(() {
                // Create a random number generator.
                final random = Random();
                // Generate a random color.
                _color = Color.fromRGBO(
                  random.nextInt(256),
                  random.nextInt(256),
                  random.nextInt(256),
                  1,
                );
              });
            },
            child: const Text(
              'Hey there',
              style: TextStyle(fontSize: 50, color: Color.fromRGBO(1, 1, 1, 1)),
            ),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(
                    Color.fromRGBO(2, 3, 4, 0))),
          ),
        ),
      ),
    ));
  }
}
