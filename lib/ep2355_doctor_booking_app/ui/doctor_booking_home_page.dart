import 'package:flutter/material.dart';

class DoctorBookingHomePage extends StatefulWidget {
  const DoctorBookingHomePage({super.key});

  @override
  State<DoctorBookingHomePage> createState() => _DoctorBookingHomePageState();
}

class _DoctorBookingHomePageState extends State<DoctorBookingHomePage> {
  List<String> tabLists = ["All", "Cardiologist", "Physiotherapy"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(239, 249, 255, 1),
                    Color.fromRGBO(238, 249, 252, 1),
                    Color.fromRGBO(242, 244, 234, 1),
                  ],
                  begin: Alignment.bottomRight,
                  end: Alignment.topRight,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: SafeArea(
              bottom: false,
              child: Column(
                spacing: 24,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      spacing: 24,
                      children: [
                        Row(
                          spacing: 16,
                          children: [
                            CircleAvatar(radius: 28),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Dream Walker"),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on_outlined),
                                      Text("Seoul"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Badge(
                              child: Icon(Icons.notifications_none, size: 32),
                            ),
                          ],
                        ),
                        Container(
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(
                              side: BorderSide(color: Colors.grey[300]!),
                            ),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: TextField(
                            decoration: InputDecoration(
                              icon: Icon(Icons.search),
                              hintText: "Try \"Orthopedics\"",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 20,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              spacing: 16,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Upcoming Appointment",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Icon(Icons.chevron_right),
                                  ],
                                ),
                                Container(
                                  height: 200,
                                  decoration: ShapeDecoration(
                                    shape: RoundedSuperellipseBorder(
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Color.fromRGBO(223, 237, 235, 1),
                                        Color.fromRGBO(228, 239, 226, 1),
                                        Color.fromRGBO(232, 242, 222, 1),
                                      ],
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned.fill(
                                        left: 16,
                                        top: 24,
                                        bottom: 24,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          spacing: 4,
                                          children: [
                                            Text(
                                              "Dr, Dream Walker",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 24,
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              "7:30 PM, 24 August",
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              'Flutter Hospital',
                                              style: TextStyle(fontSize: 16),
                                            ),
                                            Text(
                                              "Code Surgeon",
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 16,
                              children: [
                                Text(
                                  "Specialist",
                                  style: TextStyle(fontSize: 18),
                                ),
                                Container(
                                  height: 52,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: tabLists.length,
                                    itemBuilder: (context, index) {
                                      final title = tabLists[index];
                                      return Container(
                                        margin: EdgeInsets.only(right: 8),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 42,
                                        ),
                                        decoration: ShapeDecoration(
                                          shape: StadiumBorder(
                                            side: BorderSide(
                                              color: Colors.grey[400]!,
                                            ),
                                          ),
                                          color: index == 0
                                              ? Color.fromRGBO(16, 165, 192, 1)
                                              : Colors.transparent,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "${title}",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: index == 0
                                                  ? Colors.white
                                                  : null,
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.only(left: 16),
                            height: 180,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 280,
                                  margin: EdgeInsets.only(right: 16),
                                  child: Column(
                                    spacing: 16,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        spacing: 12,
                                        children: [
                                          CircleAvatar(radius: 22),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Dr. Dream Walker",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                Text(
                                                  "Flutter Surgeon",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.arrow_forward),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        spacing: 6,
                                        children: [
                                          Icon(Icons.star, color: Colors.red),
                                          Icon(Icons.star, color: Colors.red),
                                          Icon(Icons.star, color: Colors.red),
                                          Icon(Icons.star, color: Colors.red),
                                          Icon(
                                            Icons.star_outline,
                                            color: Colors.grey,
                                          ),
                                          Text("4.0"),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                              ),
                                              child: Column(
                                                children: [
                                                  Text("Sep 12"),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.check_circle,
                                                        size: 12,
                                                      ),
                                                      Text("Available")
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Upcoming Appointment",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Icon(Icons.chevron_right),
                              ],
                            ),
                          ),
                          ...List.generate(10, (idx) {
                            return Placeholder();
                          }),
                        ],
                      ),
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
