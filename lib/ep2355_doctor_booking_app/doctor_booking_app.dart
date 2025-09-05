import 'package:flutter/material.dart';

import 'ui/doctor_booking_home_page.dart';

class DoctorBookingApp extends StatelessWidget {
  const DoctorBookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DoctorBookingHomePage());
  }
}
