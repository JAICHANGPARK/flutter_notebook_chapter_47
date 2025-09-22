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
              Expanded(child: Placeholder()),
              Container(
                height: 42,
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Row(
                            children: [Icon(Icons.home_filled), Text("Home")],
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.chat_bubble_outline),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.person_2_outlined),
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
