import 'package:flutter/material.dart';

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
            height: 250,
            child: Placeholder(),
          )
        ],
      ),
    );
  }
}
