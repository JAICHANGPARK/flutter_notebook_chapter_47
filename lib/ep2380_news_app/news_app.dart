import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_47/ep2380_news_app/ui/news_home_page.dart';


class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewsHomePage(),
    );
  }
}
