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
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Row(
                children: [
                  CircleAvatar(radius: 22),
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
            Container(
              padding: EdgeInsets.only(left: 8),
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 100,
                    width: 80,
                    margin: EdgeInsets.only(right: 8),
                    child: Column(
                      spacing: 6,
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.topRight,
                                      colors: [
                                        Colors.yellow,
                                        Colors.orange,
                                        Colors.red,
                                        Colors.red,
                                      ],
                                    ),
                                  ),
                                  padding: EdgeInsets.all(3),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 1.5,
                                      ),
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 1.5,
                                    ),
                                  ),
                                  child: Icon(Icons.add, size: 20),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("Dream", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                  ...List.generate(
                    8,
                    (idx) => Container(
                      height: 100,
                      width: 80,
                      margin: EdgeInsets.only(right: 8),
                      child: Column(
                        spacing: 6,
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient: LinearGradient(
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                        colors: [
                                          Colors.yellow,
                                          Colors.orange,
                                          Colors.red,
                                          Colors.red,
                                        ],
                                      ),
                                    ),
                                    padding: EdgeInsets.all(3),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.black,
                                          width: 1.5,
                                        ),
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                                // Positioned(
                                //   bottom: 0,
                                //   right: 0,
                                //   child: Container(
                                //     decoration: BoxDecoration(
                                //       shape: BoxShape.circle,
                                //       color: Colors.blue,
                                //       border: Border.all(
                                //         color: Colors.white,
                                //         width: 1.5,
                                //       ),
                                //     ),
                                //     child: Icon(Icons.add, size: 20),
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                          Text("Dream", style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Gap(6),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  spacing: 12,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        spacing: 8,
                        children: [
                          Icon(HugeIcons.strokeRoundedCamera02),
                          Text("Reels", style: TextStyle(fontSize: 16)),
                          Spacer(),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                    ),
                    Container(
                      height: 220,
                      padding: EdgeInsets.only(left: 12),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.blue,
                              image: DecorationImage(
                                image: NetworkImage(
                                  index % 2 == 0
                                      ? "https://cdn.pixabay.com/photo/2019/08/07/23/21/harness-paragliding-4391666_1280.jpg"
                                      : "https://cdn.pixabay.com/photo/2021/10/13/07/43/couple-6705694_1280.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            margin: EdgeInsets.only(right: 12),
                            width: 140,
                            child: Center(
                              child: Container(
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black26,
                                ),
                                child: Icon(
                                  Icons.play_arrow,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Gap(4),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: List.generate(10, (idx){
                          return Container(
                              height: 320,
                            margin: EdgeInsets.only(
                              bottom: 12
                            ),
                            child: Placeholder(),
                          );
                        }),
                      ),
                    )
                  ],
                ),
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
