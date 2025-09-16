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
          SafeArea(
            bottom: false,
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Column(
                    spacing: 24,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(radius: 24, backgroundColor: Colors.grey),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Categories"),
                    TextButton(onPressed: () {}, child: Text("See All")),
                  ],
                ),
                Container(
                  height: 100,
                  child: Placeholder(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Cleaning Services"),
                    TextButton(onPressed: () {}, child: Text("See All")),
                  ],
                ),
                Container(
                  height: 180,
                  child: Placeholder(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Home Repairs"),
                    TextButton(onPressed: () {}, child: Text("See All")),
                  ],
                ),
                Container(
                  height: 180,
                  child: Placeholder(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
