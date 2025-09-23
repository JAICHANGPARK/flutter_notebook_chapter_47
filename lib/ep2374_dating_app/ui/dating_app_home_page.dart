import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class DatingAppHomePage extends StatefulWidget {
  const DatingAppHomePage({super.key});

  @override
  State<DatingAppHomePage> createState() => _DatingAppHomePageState();
}

class _DatingAppHomePageState extends State<DatingAppHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 24,
            children: [
              Row(
                spacing: 16,
                children: [
                  CircleAvatar(radius: 22),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Welcome back!!"),
                        Text(
                          "Dream Walker",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[200]!,
                          spreadRadius: 4,
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Badge(
                      child: HugeIcon(
                        icon: HugeIcons.strokeRoundedNotification01,
                        color: Colors.black,
                      ),
                      label: Text("2"),
                    ),
                  ),
                ],
              ),
              Container(
                height: 48,
                padding: EdgeInsets.all(4),
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.grey[200]!,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: Colors.black,
                        ),
                        child: Center(
                          child: Text(
                            "Discovery",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            "Matched",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[200]!,
                              blurRadius: 8,
                              spreadRadius: 4,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          padding: EdgeInsets.all(24),
                          child: Stack(
                            children: [
                              Wrap(children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                                  decoration: ShapeDecoration(shape: StadiumBorder(),color: Colors.white,),
                                  child: Text("👩🏼‍🤝‍🧑🏼  Looking for friends"),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                                  decoration: ShapeDecoration(shape: StadiumBorder(),color: Colors.white,),
                                  child: Text("📍 1.4KM"),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                                  decoration: ShapeDecoration(shape: StadiumBorder(),color: Colors.white,),
                                  child: Text("📍 Digital Artist"),
                                  
                                )
                              ],)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 48,
                child: Stack(
                  children: [
                    Align(
                      child: Container(
                        width: 200,
                        height: 6,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      spacing: 4,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Colors.black,
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 12),

                          child: Row(
                            spacing: 12,
                            children: [
                              Icon(Icons.home_filled,
                              color: Colors.white,),
                              Text(
                                "Home",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.black,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border),
                            color: Colors.white,
                          ),
                        ),
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.black,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.chat_bubble_outline),
                            color: Colors.white,
                          ),
                        ),
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.black,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.person_2_outlined),
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
