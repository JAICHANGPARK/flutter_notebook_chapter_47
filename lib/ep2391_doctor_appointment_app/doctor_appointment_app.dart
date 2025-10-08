import 'package:flutter/material.dart';

import 'ui/doctor_appointment_home_page.dart';

class DoctorAppointmentApp extends StatelessWidget {
  const DoctorAppointmentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DoctorAppointmentHomePage(),
    );
  }
}
