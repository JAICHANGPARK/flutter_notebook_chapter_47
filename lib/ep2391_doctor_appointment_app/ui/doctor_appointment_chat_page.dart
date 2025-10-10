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
          Container(
            decoration: BoxDecoration(color: Colors.white),
            padding: EdgeInsets.only(left: 16, top: 62, right: 16, bottom: 12),
            child: Row(
              spacing: 12,
              children: [
                Icon(Icons.arrow_back_ios_new_sharp),
                CircleAvatar(
                  radius: 26,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 4,
                    children: [Text("Dream Walker",
                    style: TextStyle(
                      fontSize: 18
                    ),), Text("Online")],
                  ),
                ),
                Icon(Icons.phone),
                Icon(Icons.more_vert),
              

              ],
            ),
          ),
        ],
      ),
    );
  }
}
