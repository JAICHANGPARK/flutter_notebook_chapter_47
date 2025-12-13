import 'package:flutter/material.dart';

import 'ui/smart_home_page.dart';


class SmartHomeApp extends StatelessWidget {
  const SmartHomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SmartHomePage(),
    );
  }
}
