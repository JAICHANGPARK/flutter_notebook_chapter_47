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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(241, 244, 255, 1),
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
                      backgroundColor:accentColor,
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
                    return Placeholder();
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
