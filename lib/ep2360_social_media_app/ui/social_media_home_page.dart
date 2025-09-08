import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class SocialMediaHomePage extends StatefulWidget {
  const SocialMediaHomePage({super.key});

  @override
  State<SocialMediaHomePage> createState() => _SocialMediaHomePageState();
}

class _SocialMediaHomePageState extends State<SocialMediaHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          spacing: 16,
          children: [
            Row(children: [CircleAvatar()]),
            SizedBox(height: 100, child: Placeholder()),
            Row(children: []),
            SizedBox(height: 200, child: Placeholder()),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(height: 320, child: Placeholder());
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(HugeIcons.strokeRoundedHome01)),
        ],
      ),
    );
  }
}
