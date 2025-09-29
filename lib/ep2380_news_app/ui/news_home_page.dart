import 'package:flutter/material.dart';

class NewsHomePage extends StatefulWidget {
  const NewsHomePage({super.key});

  @override
  State<NewsHomePage> createState() => _NewsHomePageState();
}

class _NewsHomePageState extends State<NewsHomePage> {
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
              child: Column(
                spacing: 12,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Row(
                      spacing: 8,
                      children: [
                        Text(
                          "Explore News",
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
                          child: Badge(
                            child: Icon(Icons.notifications_active_outlined),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.only(left: 16, right: 4),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search News and Channel...",
                              hintStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                              border: InputBorder.none,
                              icon: Icon(Icons.search),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
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
                          child: Icon(Icons.tune, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 16),
                    padding: EdgeInsets.only(left: 16),
                    height: 42,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 16),
                          child: Column(
                            spacing: 3,
                            children: [
                              Text(
                                "All News",
                                style: TextStyle(
                                  color: Color.fromRGBO(57, 118, 246, 1),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              CircleAvatar(
                                radius: 4,
                                backgroundColor: Color.fromRGBO(
                                  57,
                                  118,
                                  246,
                                  1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ...[
                          "Celebs",
                          "Politics",
                          "Sports",
                          "Educations",
                          "History",
                          "Music",
                        ].map((e) {
                          return Padding(
                            padding: EdgeInsets.only(right: 16),
                            child: Column(
                              spacing: 3,
                              children: [
                                Text("${e}"),
                                CircleAvatar(
                                  radius: 4,
                                  backgroundColor: Colors.transparent,
                                ),
                              ],
                            ),
                          );
                        }),
                      ],
                    ),
                  ),
                  Container(
                    height: 180,
                    // padding: EdgeInsets.only(left: 16),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          width: MediaQuery.sizeOf(context).width * .85,
                          margin: EdgeInsets.only(left: 16),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          padding: EdgeInsets.all(8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            spacing: 6,
                            children: [
                              Row(
                                spacing: 6,
                                children: [
                                  CircleAvatar(radius: 14),
                                  Text(
                                    "ABCD 10h ago",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                                maxLines: 2,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                                maxLines: 1,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: ListView.separated(
                      itemCount: 10,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Row(
                                          spacing: 6,
                                          children: [
                                            CircleAvatar(radius: 14),
                                            Text(
                                              "ABCD 10h ago",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                                          maxLines: 3,
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 72,
                                    width: 96,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              height: 90,
              child: Row(children: []),
            ),
          ),
        ],
      ),
    );
  }
}
