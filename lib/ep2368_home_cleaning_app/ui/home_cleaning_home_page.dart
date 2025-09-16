import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class HomeCleaningHomePage extends StatefulWidget {
  const HomeCleaningHomePage({super.key});

  @override
  State<HomeCleaningHomePage> createState() => _HomeCleaningHomePageState();
}

class _HomeCleaningHomePageState extends State<HomeCleaningHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 246, 248, 1),
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(radius: 24, backgroundColor: Colors.white),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: Badge(
                          child: HugeIcon(
                            icon: HugeIcons.strokeRoundedNotification01,
                            color: Colors.black,
                          ),

                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
