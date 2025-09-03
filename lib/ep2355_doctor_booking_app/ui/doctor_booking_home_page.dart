import 'package:flutter/material.dart';

class DoctorBookingHomePage extends StatefulWidget {
  const DoctorBookingHomePage({super.key});

  @override
  State<DoctorBookingHomePage> createState() => _DoctorBookingHomePageState();
}

class _DoctorBookingHomePageState extends State<DoctorBookingHomePage> {
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
                                children: [
                                  Text("Upcoming Appointment"),
                                  Icon(Icons.chevron_right),
                                ],
                              ),
                              Container(height: 180, child: Placeholder()),
                            ],),
                          ),

                          Text("Specialist"),
                          Container(height: 62, child: Placeholder()),
                          Container(height: 180, child: Placeholder()),
                          Row(
                            children: [
                              Text("Upcoming Appointment"),
                              Icon(Icons.chevron_right),
                            ],
                          ),
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
