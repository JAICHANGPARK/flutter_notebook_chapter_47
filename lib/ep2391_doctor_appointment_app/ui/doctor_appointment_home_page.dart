import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class DoctorAppointmentHomePage extends StatefulWidget {
  const DoctorAppointmentHomePage({super.key});

  @override
  State<DoctorAppointmentHomePage> createState() =>
      _DoctorAppointmentHomePageState();
}

class _DoctorAppointmentHomePageState extends State<DoctorAppointmentHomePage> {
  Color accentColor = Color.fromRGBO(37, 106, 254, 1);
  Color backgroundColor = Color.fromRGBO(241, 244, 255, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 16, 16, 0),
          child: Column(
            spacing: 16,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Doctor List",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.white,
                    child: HugeIcon(
                      icon: HugeIcons.strokeRoundedNotification01,
                    ),
                  ),
                ],
              ),
              Container(
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.white,
                ),
                padding: EdgeInsets.only(left: 16, bottom: 4, top: 4, right: 4),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.search),
                          hintText: "Search",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: accentColor,
                      foregroundColor: Colors.white,
                      child: Icon(Icons.tune),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DoctorAppointmentChatPage(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: ShapeDecoration(
                          shape: RoundedSuperellipseBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          color: index == 0 ? accentColor : Colors.white,
                        ),
                        padding: EdgeInsets.all(12),
                        child: Column(
                          spacing: 16,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              spacing: 12,
                              children: [
                                CircleAvatar(radius: 24),
                                Expanded(
                                  child: Text(
                                    "Dr. Dream Walker",
                                    style: TextStyle(
                                      color: index == 0
                                          ? Colors.white
                                          : Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "General Physician",
                              style: TextStyle(
                                color: index == 0 ? Colors.white : Colors.black,
                                // fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        spacing: 5,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.orange,
                                            size: 16,
                                          ),
                                          Text(
                                            "5.0",
                                            style: TextStyle(
                                              color: index == 0
                                                  ? Colors.white
                                                  : Colors.black,
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "133 Reviews",
                                        style: TextStyle(color: Colors.white54),
                                      ),
                                    ],
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 28,
                                  backgroundColor: backgroundColor,
                                  foregroundColor: Colors.black,
                                  child: Transform.rotate(
                                    angle: -2 / pi,
                                    child: Icon(Icons.arrow_forward_rounded),
                                  ),
                                ),
                              ],
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
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: BottomNavigationBar(
          selectedItemColor: accentColor,
          unselectedItemColor: Colors.black,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: HugeIcon(icon: HugeIcons.strokeRoundedDoctor01),
              label: "Doctor",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_time_filled),
              label: "Appointment",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
