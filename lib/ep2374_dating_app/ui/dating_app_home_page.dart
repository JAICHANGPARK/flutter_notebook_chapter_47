import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class DatingAppHomePage extends StatefulWidget {
  const DatingAppHomePage({super.key});

  @override
  State<DatingAppHomePage> createState() => _DatingAppHomePageState();
}

class _DatingAppHomePageState extends State<DatingAppHomePage> {
  int tabNum = 0;
  Offset _cardPosition = Offset.zero;

  Widget _buildDraggableCard() {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * 0.9,
      height: screenSize.height * 0.65,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.grey[200]!, blurRadius: 8, spreadRadius: 4),
        ],
        borderRadius: BorderRadius.circular(16),
      ),
      padding: EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: EdgeInsets.fromLTRB(16, 24, 16, 24),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              top: 0,
              left: 0,
              child: Wrap(
                runAlignment: WrapAlignment.end,
                spacing: 8,
                runSpacing: 8,
                alignment: WrapAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.white,
                    ),
                    child: Text("👩🏼‍🤝‍🧑🏼  Looking for friends"),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.white,
                    ),
                    child: Text("📍 1.4KM"),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.white,
                    ),
                    child: Text("🎶 Digital Artist"),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12,
                children: [
                  Row(
                    children: [
                      Text(
                        "Matched 5 * Preferences",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Text(
                    "Dreamwalker, 100",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. U",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final screenSize = MediaQuery.of(context).size;
      final cardSize = context.size;
      if (cardSize != null) {
        setState(() {
          _cardPosition = Offset(
            (screenSize.width - cardSize.width) / 2,
            (screenSize.height - cardSize.height) / 4,
          );
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 24,
            children: [
              Row(
                spacing: 16,
                children: [
                  CircleAvatar(radius: 22),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Welcome back!!"),
                        Text(
                          "Dream Walker",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[200]!,
                          spreadRadius: 4,
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Badge(
                      label: Text("2"),
                      child: HugeIcon(
                        icon: HugeIcons.strokeRoundedNotification01,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 48,
                padding: EdgeInsets.all(4),
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.grey[200]!,
                ),
                child: Row(
                  spacing: 8,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            tabNum = 0;
                          });
                        },
                        child: Container(
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: tabNum == 0
                                ? Colors.black
                                : Colors.transparent,
                          ),
                          child: Center(
                            child: Text(
                              "Discovery",
                              style: TextStyle(
                                color: tabNum == 0 ? Colors.white : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            tabNum = 1;
                          });
                        },
                        child: Container(
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: tabNum == 1
                                ? Colors.black
                                : Colors.transparent,
                          ),
                          child: Center(
                            child: Text(
                              "Matched",
                              style: TextStyle(
                                color: tabNum == 1 ? Colors.white : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: IndexedStack(
                        index: tabNum,
                        children: [
                          Stack(
                            children: [
                              Positioned(
                                left: _cardPosition.dx,
                                top: _cardPosition.dx,
                                child: Draggable(
                                  feedback: Material(
                                    child: _buildDraggableCard(),
                                  ),
                                  childWhenDragging: Container(),
                                  onDraggableCanceled: (velo, offset) {
                                    print(velo);
                                    print(offset);
                                    setState(() {});
                                  },
                                  child: _buildDraggableCard(),
                                ),
                              ),
                              Positioned(
                                left: _cardPosition.dx,
                                top: _cardPosition.dx,
                                child: Draggable(
                                  feedback: Material(
                                    child: _buildDraggableCard(),
                                  ),
                                  childWhenDragging: Container(),
                                  onDraggableCanceled: (velo, offset) {
                                    print(velo);
                                    print(offset);
                                    setState(() {});
                                  },
                                  child: _buildDraggableCard(),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            spacing: 20,
                            children: [
                              Container(
                                height: 42,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 15),
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,

                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey[200]!,

                                            blurRadius: 4,
                                            spreadRadius: 2,
                                          ),
                                        ],
                                      ),
                                      child: Icon(Icons.tune),
                                    ),
                                    Container(
                                      decoration: ShapeDecoration(
                                        shape: StadiumBorder(),
                                        color: Colors.white,
                                        shadows: [
                                          BoxShadow(
                                            color: Colors.grey[200]!,
                                            blurRadius: 4,
                                            spreadRadius: 2,
                                          ),
                                        ],
                                      ),
                                      margin: EdgeInsets.only(right: 15),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 2,
                                      ),
                                      child: Row(
                                        spacing: 8,
                                        children: [
                                          Text(
                                            "All",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Text(
                                            "16",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: ShapeDecoration(
                                        shape: StadiumBorder(),
                                        color: Colors.black,
                                        shadows: [
                                          BoxShadow(
                                            color: Colors.grey[200]!,
                                            blurRadius: 4,
                                            spreadRadius: 2,
                                          ),
                                        ],
                                      ),
                                      margin: EdgeInsets.only(right: 15),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 2,
                                      ),
                                      child: Row(
                                        spacing: 8,
                                        children: [
                                          Text(
                                            "Preferences",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            "6",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: ShapeDecoration(
                                        shape: StadiumBorder(),
                                        color: Colors.white,
                                        shadows: [
                                          BoxShadow(
                                            color: Colors.grey[200]!,
                                            blurRadius: 4,
                                            spreadRadius: 2,
                                          ),
                                        ],
                                      ),
                                      margin: EdgeInsets.only(right: 15),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 2,
                                      ),
                                      child: Row(
                                        spacing: 8,
                                        children: [
                                          Text(
                                            "Nearby",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Text(
                                            "10",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Expanded(
                                child: GridView.builder(
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        crossAxisSpacing: 16,
                                        mainAxisSpacing: 16,
                                        childAspectRatio: .65,
                                      ),
                                  itemBuilder: (context, index) {
                                    return Container(
                                      margin: EdgeInsets.all(3),
                                      decoration: ShapeDecoration(
                                        shape: RoundedSuperellipseBorder(
                                          borderRadius: BorderRadius.circular(
                                            24,
                                          ),
                                        ),
                                        color: Colors.white,
                                        shadows: [
                                          BoxShadow(
                                            color: Colors.grey[100]!,
                                            spreadRadius: 4,
                                            blurRadius: 4,
                                          ),
                                        ],
                                      ),
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        decoration: ShapeDecoration(
                                          shape: RoundedSuperellipseBorder(
                                            borderRadius: BorderRadius.circular(
                                              24,
                                            ),
                                          ),
                                          color: Colors.black,
                                        ),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              right: 12,
                                              top: 12,
                                              child: Container(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 12,
                                                  vertical: 4,
                                                ),
                                                decoration: ShapeDecoration(
                                                  shape: StadiumBorder(),
                                                  color: Colors.white,
                                                ),
                                                child: Text(
                                                  "🎶 Digital Artist",
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              bottom: 12,
                                              left: 12,
                                              child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Icon(Icons.star_border),
                                                    Text("Matched 10 Preferences"),
                                                    Text("Dream, 20")
                                                  ]),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 48,
                        margin: EdgeInsets.symmetric(vertical: 24),
                        child: Stack(
                          children: [
                            Align(
                              child: Container(
                                width: 200,
                                height: 6,
                                color: Colors.black,
                              ),
                            ),
                            Row(
                              spacing: 4,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: ShapeDecoration(
                                    shape: StadiumBorder(),
                                    color: Colors.black,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 12,
                                  ),

                                  child: Row(
                                    spacing: 12,
                                    children: [
                                      Icon(
                                        Icons.home_filled,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "Home",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 24,
                                  backgroundColor: Colors.black,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.favorite_border),
                                    color: Colors.white,
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 24,
                                  backgroundColor: Colors.black,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.chat_bubble_outline),
                                    color: Colors.white,
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 24,
                                  backgroundColor: Colors.black,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.person_2_outlined),
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
