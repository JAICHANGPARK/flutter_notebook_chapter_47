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
      bottomNavigationBar: Container(
        height: 100,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(HugeIcons.strokeRoundedHome01),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(HugeIcons.strokeRoundedHome01),
              label: "Reels",
            ),
            BottomNavigationBarItem(
              icon: Icon(HugeIcons.strokeRoundedHome01),
              label: "Friends",
            ),
            BottomNavigationBarItem(
              icon: Icon(HugeIcons.strokeRoundedHome01),
              label: "Notifications",
            ),
            BottomNavigationBarItem(
              icon: Icon(HugeIcons.strokeRoundedMenu01),
              label: "Menu",
            ),
          ],
        ),
      ),
    );
  }
}
