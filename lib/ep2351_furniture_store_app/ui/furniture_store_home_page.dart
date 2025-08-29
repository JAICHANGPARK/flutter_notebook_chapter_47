import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class FurnitureStoreHomePage extends StatefulWidget {
  const FurnitureStoreHomePage({super.key});

  @override
  State<FurnitureStoreHomePage> createState() => _FurnitureStoreHomePageState();
}

class _FurnitureStoreHomePageState extends State<FurnitureStoreHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200]!,
      body: Stack(
        children: [
          Positioned.fill(
            left: 16,
            right: 16,
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Discover Your"),
                            Text.rich(TextSpan(children: [])),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 30,
                        child: Icon(HugeIcons.strokeRoundedNotification01),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 24),
              padding: EdgeInsets.all(10),
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.black,
              ),
              child: Row(
                spacing: 4,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: Color.fromRGBO(172, 127, 85, 1),
                    foregroundColor: Colors.white,
                    child: Icon(HugeIcons.strokeRoundedHome05),
                  ),
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.white24,
                    foregroundColor: Colors.white,
                    child: Icon(Icons.favorite_border),
                  ),
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.white24,
                    foregroundColor: Colors.white,
                    child: Icon(Icons.shopping_bag_outlined),
                  ),
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.white24,
                    foregroundColor: Colors.white,
                    child: Icon(Icons.person_2_outlined),
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
