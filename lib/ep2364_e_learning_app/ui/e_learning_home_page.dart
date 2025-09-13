import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class ELearningHomePage extends StatefulWidget {
  const ELearningHomePage({super.key});

  @override
  State<ELearningHomePage> createState() => _ELearningHomePageState();
}

class _ELearningHomePageState extends State<ELearningHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.green),
            padding: EdgeInsets.fromLTRB(16, 62, 16, 24),
            child: Column(
              spacing: 16,
              children: [
                Row(
                  spacing: 12,
                  children: [
                    Container(
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white),
                        color: Colors.brown,
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2025/09/02/15/16/bird-9811729_1280.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome Back!",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "Dream Walker",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: 26,
                      backgroundColor: Colors.white,
                      child: HugeIcon(
                        icon: HugeIcons.strokeRoundedNotification01,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.search),
                            hintText: "Search",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 24,
                        child: Icon(Icons.tune),
                        backgroundColor: Colors.green[50],
                        foregroundColor: Colors.green,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                spacing: 12,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Top Courses",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.grey,
                          ),
                          child: Text("View All"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.red,
                    height: 42,
                    padding: EdgeInsets.only(left: 16),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          margin: EdgeInsets.only(right: 16),
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Colors.green,
                          ),
                          child: Center(
                            child: Text(
                              'All Courses',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        ...["Popular", "Newest", "Teachers Spot"].map((e) {
                          return Container(
                            margin: EdgeInsets.only(right: 16),
                            padding: EdgeInsets.symmetric(horizontal: 24),
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(
                                side: BorderSide(color: Colors.grey),
                              ),
                            ),
                            child: Center(child: Text(e)),
                          );
                        }),
                      ],
                    ),
                  ),
                  Container(
                    height: 240,
                    padding: EdgeInsets.only(left: 16),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 180,
                          margin: EdgeInsets.only(right: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Colors.grey[300]!),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 106,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(16),
                                    topLeft: Radius.circular(16),
                                  ),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2025/08/26/17/58/barn-swallow-9798461_1280.jpg",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  spacing: 16,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      spacing: 6,
                                      children: [
                                        Text(
                                          "\$300",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.play_circle_outline,
                                          size: 16,
                                        ),
                                        Text("5"),
                                        Icon(Icons.star, size: 16),
                                        Text("4.8"),
                                      ],
                                    ),
                                    Text(
                                      "Assessment &\nEffective\nQuestioning",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Featured Services",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    padding: EdgeInsets.only(left: 16),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 180,
                          margin: EdgeInsets.only(right: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Colors.grey[200]!),
                            color: index % 2 == 0
                                ? Colors.green[100]!
                                : Colors.orange[100],
                          ),
                          padding: EdgeInsets.all(16),
                          child: Column(
                            spacing: 12,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 54,
                                width: 54,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "DI Training",
                                style: TextStyle(fontSize: 16),
                              ),
                              Wrap(
                                spacing: 12,
                                runSpacing: 8,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 4,
                                    ),
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(
                                        side: BorderSide(color: Colors.grey),
                                      ),
                                    ),
                                    child: Text(
                                      "RMK",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 4,
                                    ),
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(
                                        side: BorderSide(color: Colors.grey),
                                      ),
                                    ),
                                    child: Text(
                                      "RMK",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 4,
                                    ),
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(
                                        side: BorderSide(color: Colors.grey),
                                      ),
                                    ),
                                    child: Text(
                                      "RM2-5",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 4,
                                    ),
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(
                                        side: BorderSide(color: Colors.grey),
                                      ),
                                    ),
                                    child: Text(
                                      "RM2-5",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          // border: Border(top: BorderSide(color: Colors.grey)),
          boxShadow: [
            BoxShadow(color: Colors.grey[100]!, blurRadius: 4, spreadRadius: 4),
          ],
        ),
        height: 100,
        child: BottomNavigationBar(
          elevation: 6,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey[600]!,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled, size: 32),

              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore_outlined, size: 32),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border, size: 32),
              label: 'Bookmark',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined, size: 32),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
