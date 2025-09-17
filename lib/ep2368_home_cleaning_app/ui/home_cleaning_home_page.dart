import 'package:flutter/cupertino.dart';
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
      body: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
              bottom: false,
              child: Column(
                spacing: 16,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Column(
                      spacing: 24,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 24,
                              backgroundColor: Colors.grey,
                            ),
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
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Colors.white,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search",
                              border: InputBorder.none,
                              icon: Icon(Icons.search),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Categories",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text("See All"),
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.purple,
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    padding: EdgeInsets.only(left: 16),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,

                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: Column(
                            spacing: 12,
                            children: [
                              CircleAvatar(radius: 32),
                              Text(
                                "Cleaning",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Cleaning Services"),
                      TextButton(onPressed: () {}, child: Text("See All")),
                    ],
                  ),
                  Container(height: 180, child: Placeholder()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Home Repairs"),
                      TextButton(onPressed: () {}, child: Text("See All")),
                    ],
                  ),
                  Container(height: 180, child: Placeholder()),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(),
                  IconButton(onPressed: () {}, icon: Icon(Icons.chat_outlined)),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.bookmark_border),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person_2_outlined),
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
