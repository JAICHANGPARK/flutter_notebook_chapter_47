import 'package:flutter/material.dart';

import 'ui/social_media_home_page.dart';

class SocialMediaApp extends StatelessWidget {
  const SocialMediaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SocialMediaHomePage(),
    );
  }
}
