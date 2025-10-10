import 'package:flutter/material.dart';

class DoctorAppointmentChatPage extends StatefulWidget {
  const DoctorAppointmentChatPage({super.key});

  @override
  State<DoctorAppointmentChatPage> createState() =>
      _DoctorAppointmentChatPageState();
}

class _DoctorAppointmentChatPageState extends State<DoctorAppointmentChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Icon(Icons.arrow_back_ios_new_sharp),
              CircleAvatar(),
              Expanded(
                child: Column(children: [Text("Dream Walker"), Text("Online")]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
