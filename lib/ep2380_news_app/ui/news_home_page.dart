import 'package:flutter/material.dart';

class NewsHomePage extends StatefulWidget {
  const NewsHomePage({super.key});

  @override
  State<NewsHomePage> createState() => _NewsHomePageState();
}

class _NewsHomePageState extends State<NewsHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(239, 243, 255, 1),
                    Colors.white,
                    Color.fromRGBO(243, 246, 254, 1),
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Row(
                      spacing: 8,
                      children: [
                        Text("Explore News"),
                        Spacer(),
                        Container(
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 6,
                          ),
                          child: Row(children: [Text("⛈ 50℉")]),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Badge(
                            child: Icon(Icons.notifications_active_outlined),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Expanded(child: TextField()),
                        Container(
                          decoration: BoxDecoration(),
                          child: Icon(Icons.tune),
                        ),
                      ],
                    ),
                  ),
                  Container(height: 42, child: Placeholder()),
                  Container(height: 160, child: Placeholder()),
                  Expanded(child: Placeholder()),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(color: Colors.white),
      ),
    );
  }
}
