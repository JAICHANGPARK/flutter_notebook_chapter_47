import 'package:flutter/material.dart';

import 'ui/home_cleaning_start_page.dart';

class HomeCleaningServiceApp extends StatelessWidget {
  const HomeCleaningServiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeCleaningStartPage());
  }
}
