import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  CircleAvatar(),
                  Gap(16),
                  Text("How's it Going?"),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add_circle_outline),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                  Gap(16),
                  Badge(
                    child: Icon(HugeIcons.strokeRoundedBubbleChat),
                    backgroundColor: Colors.red,
                  ),
                ],
              ),
            ),
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
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),

        child: SizedBox(
          height: 100,
          child: BottomNavigationBar(
            // backgroundColor: Colors.transparent,
            selectedItemColor: Colors.blueAccent,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(HugeIcons.strokeRoundedHome01),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(HugeIcons.strokeRoundedCamera01),
                label: "Reels",
              ),
              BottomNavigationBarItem(
                icon: Icon(HugeIcons.strokeRoundedUserGroup),
                label: "Friends",
              ),
              BottomNavigationBarItem(
                icon: Icon(HugeIcons.strokeRoundedNotification01),
                label: "Notifications",
              ),
              BottomNavigationBarItem(
                icon: Icon(HugeIcons.strokeRoundedMenu01),
                label: "Menu",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
