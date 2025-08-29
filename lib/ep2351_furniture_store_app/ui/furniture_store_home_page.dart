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
      body: Stack(
        children: [Positioned.fill(child: Column(children: []))
          Align(
            child: Container(decoration: ShapeDecoration(shape: StadiumBorder(),

              color: Colors.black,
            ),),)
        ],
      ),
    );
  }
}
