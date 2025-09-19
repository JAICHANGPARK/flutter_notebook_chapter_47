import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeCleaningDetailPage extends StatefulWidget {
  const HomeCleaningDetailPage({super.key});

  @override
  State<HomeCleaningDetailPage> createState() => _HomeCleaningDetailPageState();
}

class _HomeCleaningDetailPageState extends State<HomeCleaningDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 246, 248, 1),
      body: Column(
        children: [
          Container(
            height: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
              image: DecorationImage(
                image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2015/06/26/09/03/dad-822294_1280.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: SafeArea(
              child: Stack(
                children: [
                  Positioned(
                    left: 16,
                    top: 8,
                    child: CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.keyboard_arrow_left),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Text(
                        "Bid in progress",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Fix my house",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "\$60.00",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    maxLines: 3,
                  ),
                ),
                Gap(16),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  height: 160,
                  child: Row(
                    spacing: 16,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: ShapeDecoration(
                            shape: RoundedSuperellipseBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            color: Colors.purple,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: ShapeDecoration(
                            shape: RoundedSuperellipseBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: ShapeDecoration(
                            shape: RoundedSuperellipseBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(8),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Tags"),
                ),
                SizedBox(height: 52, child: Placeholder()),
                Row(
                  spacing: 16,
                  children: [
                    Expanded(child: Container(color: Colors.black)),
                    Expanded(child: Container(color: Colors.purple)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
