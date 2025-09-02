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
              decoration: BoxDecoration(gradient: LinearGradient(colors: [])),
            ),
          ),
        ],
      ),
    );
  }
}
