
import 'package:flutter/material.dart';

import 'ui/e_learning_home_page.dart';

class ELearningApp extends StatelessWidget {
  const ELearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      home: ELearningHomePage(),
    );
  }
}
