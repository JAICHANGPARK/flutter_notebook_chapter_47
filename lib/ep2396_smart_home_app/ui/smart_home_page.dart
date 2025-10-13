import 'package:flutter/material.dart';

class SmartHomePage extends StatefulWidget {
  const SmartHomePage({super.key});

  @override
  State<SmartHomePage> createState() => _SmartHomePageState();
}

class _SmartHomePageState extends State<SmartHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [Colors.white, Colors.teal , Colors.black, ],
                  center: Alignment(0.4, -0.9),
                  radius: .6,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
