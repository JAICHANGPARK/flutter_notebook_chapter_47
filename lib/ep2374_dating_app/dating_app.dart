import 'package:flutter/material.dart';

import 'ui/dating_app_home_page.dart';

class DatingApp extends StatelessWidget {
  const DatingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DatingAppHomePage(),
    );
  }
}
