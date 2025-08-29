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
          Positioned.fill(child: Column(children: [])),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 24),
              padding: EdgeInsets.all(12),
              decoration: ShapeDecoration(
                shape: StadiumBorder(),

                color: Colors.black,
              ),
              child: Row(
                spacing: 4,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color.fromRGBO(172, 127, 85, 1),
                    foregroundColor: Colors.white,
                    child: Icon(HugeIcons.strokeRoundedHome05),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white24,
                    foregroundColor: Colors.white,
                    child: Icon(Icons.favorite_border),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white24,
                    foregroundColor: Colors.white,
                    child: Icon(Icons.shopping_bag_outlined),
                  ),
                  CircleAvatar(
                    radius: 30,
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
