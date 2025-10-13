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
                  colors: [Color.fromRGBO(60, 104, 103, 1),

                    Color.fromRGBO(32, 80, 79, 1) , Colors.black, ],
                  center: Alignment(0.5, -0.9),
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
