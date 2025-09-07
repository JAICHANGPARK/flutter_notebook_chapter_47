import 'package:flutter/material.dart';

class SocialMediaHomePage extends StatefulWidget {
  const SocialMediaHomePage({super.key});

  @override
  State<SocialMediaHomePage> createState() => _SocialMediaHomePageState();
}

class _SocialMediaHomePageState extends State<SocialMediaHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(children: [])),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(color: Colors.blue),
      ),
    );
  }
}
