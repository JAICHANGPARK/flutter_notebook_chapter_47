import 'package:flutter/material.dart';

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
              decoration: ShapeDecoration(
                shape: StadiumBorder(),

                color: Colors.black,
              ),
              child: Row(
                children: [CircleAvatar(),
                  CircleAvatar(),
                  CircleAvatar(),
                  CircleAvatar(),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
