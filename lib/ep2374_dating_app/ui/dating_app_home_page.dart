import 'package:flutter/material.dart';

class DatingAppHomePage extends StatefulWidget {
  const DatingAppHomePage({super.key});

  @override
  State<DatingAppHomePage> createState() => _DatingAppHomePageState();
}

class _DatingAppHomePageState extends State<DatingAppHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(),
                Expanded(child: Column(children: [])),
                Container(decoration: BoxDecoration(shape: BoxShape.circle)),
              ],
            ),
            Container(
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.grey[200]!,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
