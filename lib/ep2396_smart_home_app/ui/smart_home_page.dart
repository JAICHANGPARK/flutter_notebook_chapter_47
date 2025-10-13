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
                  radius: .65,
                  colors: [
                    Color.fromRGBO(60, 104, 103, 1),
                    Color.fromRGBO(32, 80, 79, 1),
                    Color.fromRGBO(8, 52, 51, 1),
                    Colors.black,
                  ],
                  center: Alignment(0.5, -0.85),
                ),
              ),
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            bottom: 0,
            top: 0,
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(radius: 28),
                      Container(
                        height: 56,
                        width: 56,
                        decoration: BoxDecoration(color: Colors.blue),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
