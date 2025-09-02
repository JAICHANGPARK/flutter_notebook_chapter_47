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
                      Badge(child: Icon(Icons.notifications_none, size: 32)),
                    ],
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(
                        side: BorderSide(color: Colors.grey[300]!),
                      ),
                    ),
                    child: TextField(),
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
