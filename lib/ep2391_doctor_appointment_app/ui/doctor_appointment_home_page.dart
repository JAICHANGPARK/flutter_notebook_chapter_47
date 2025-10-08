import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class DoctorAppointmentHomePage extends StatefulWidget {
  const DoctorAppointmentHomePage({super.key});

  @override
  State<DoctorAppointmentHomePage> createState() =>
      _DoctorAppointmentHomePageState();
}

class _DoctorAppointmentHomePageState extends State<DoctorAppointmentHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Doctor List",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: HugeIcon(icon: HugeIcons.strokeRoundedNotification01),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
