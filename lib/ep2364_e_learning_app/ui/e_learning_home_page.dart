import 'package:flutter/material.dart';

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
            height: 240,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.green),
            padding: EdgeInsets.fromLTRB(16, 42, 16, 16),
            child: Column(children: []),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Top Courses",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(onPressed: () {}, child: Text("View All")),
                      ],
                    ),
                  ),
                  Container(height: 62, child: Placeholder()),
                  Container(height: 240, child: Placeholder()),
                  Row(
                    children: [
                      Text("Top Courses"),
                      TextButton(onPressed: () {}, child: Text("View All")),
                    ],
                  ),
                  Container(height: 240, child: Placeholder()),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
