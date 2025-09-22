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
                  CircleAvatar(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("Welcome back!!"), Text("Dream Walker")],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(shape: BoxShape.circle),
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
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: Colors.transparent,
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
