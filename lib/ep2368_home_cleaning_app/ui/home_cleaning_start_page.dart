import 'package:flutter/material.dart';

class HomeCleaningStartPage extends StatelessWidget {
  const HomeCleaningStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            "https://cdn.pixabay.com/photo/2025/06/16/12/52/cleaning-services-9663247_1280.jpg",
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
