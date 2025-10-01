import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NewsDetailPage extends StatefulWidget {
  const NewsDetailPage({super.key});

  @override
  State<NewsDetailPage> createState() => _NewsDetailPageState();
}

class _NewsDetailPageState extends State<NewsDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(239, 243, 255, 1),
                    Colors.white,
                    Color.fromRGBO(243, 246, 254, 1),
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: SafeArea(
              bottom: false,
              child: Column(
                spacing: 16,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Row(
                      spacing: 8,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Icon(Icons.keyboard_arrow_left),
                        ),
                        Text(
                          "Back",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Spacer(),
                        Container(
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 6,
                          ),
                          child: Row(children: [Text("⛈ 50℉")]),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          child: Badge(child: Icon(Icons.bookmark_border)),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          child: Icon(Icons.share),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      spacing: 8,
                      children: [
                        CircleAvatar(),
                        Text("ABCD KOREA · Sep 30 · Politics"),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromRGBO(49, 102, 223, 1),
                                Color.fromRGBO(67, 118, 239, 1),
                                Color.fromRGBO(49, 102, 223, 1),
                              ],
                            ),
                          ),
                          child: Text(
                            "Follow",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        spacing: 16,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: IntrinsicHeight(
                              child: Row(
                                spacing: 12,
                                children: [
                                  SizedBox(
                                    height: 32,

                                    // width: 6,
                                    child: VerticalDivider(
                                      width: 2,
                                      color: Colors.blue,
                                      thickness: 4,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ",
                                      maxLines: 1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 220,
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              spacing: 24,
                              children: [
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                                  maxLines: 2,
                                ),
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                                ),
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                                  maxLines: 4,
                                ),
                                Container(
                                  height: 240,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 42),
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(4),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey[200]!,
                    foregroundColor: Colors.black,
                    child: Icon(Icons.favorite_border, size: 16),
                  ),
                  Gap(4),
                  Text("10.8K"),
                  Gap(4),
                  CircleAvatar(
                    backgroundColor: Colors.grey[200]!,
                    foregroundColor: Colors.black,
                    child: Icon(Icons.chat_outlined, size: 16),
                  ),
                  Gap(4),
                  Text("2.4K"),
                  Gap(4),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blueAccent,
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(49, 102, 223, 1),
                          Color.fromRGBO(67, 118, 239, .9),
                          Color.fromRGBO(49, 102, 223, 1),
                        ],
                      ),
                    ),
                    child: Center(
                      child: Icon(Icons.multitrack_audio, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
