import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class SmartHomePage extends StatefulWidget {
  const SmartHomePage({super.key});

  @override
  State<SmartHomePage> createState() => _SmartHomePageState();
}

class _SmartHomePageState extends State<SmartHomePage> {
  Color accentColor = Color.fromRGBO(33, 232, 225, 1);

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
                spacing: 16,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(radius: 28),
                      Container(
                        height: 56,
                        width: 56,
                        // decoration: BoxDecoration(color: Colors.blue),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 0,
                              right: 0,
                              child: CircleAvatar(
                                radius: 6,
                                backgroundColor: Colors.red,
                              ),
                            ),
                            Positioned.fill(
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white30,
                                    width: 0.5,
                                  ),
                                  shape: BoxShape.circle,
                                  color: Colors.white12,
                                ),
                                child: Center(
                                  child: HugeIcon(
                                    icon: HugeIcons.strokeRoundedNotification01,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 3, sigmaY: 5),
                      child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white12),
                          borderRadius: BorderRadius.circular(42),
                        ),
                        child: Row(
                          spacing: 8,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: accentColor,
                              foregroundColor: Colors.black,
                              child: Icon(Icons.bolt, size: 28),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "952",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Kwh',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "Date updated 3 hours ago",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.keyboard_arrow_down),
                              color: Colors.white,
                              iconSize: 36,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Rooms"),
                      TextButton(onPressed: () {}, child: Text("view All")),
                    ],
                  ),
                  Expanded(child: Placeholder()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
