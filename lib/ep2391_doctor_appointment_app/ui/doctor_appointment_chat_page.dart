import 'package:flutter/material.dart';

import '../theme.dart';

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
      backgroundColor: DoctorAppTheme.backgroundColor,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white),
            padding: EdgeInsets.only(left: 16, top: 62, right: 16, bottom: 12),
            child: Row(
              spacing: 12,
              children: [
                Icon(Icons.arrow_back_ios_new_sharp),
                CircleAvatar(radius: 26),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 4,
                    children: [
                      Text("Dream Walker", style: TextStyle(fontSize: 18)),
                      Text("Online"),
                    ],
                  ),
                ),
                Icon(Icons.phone, color: Colors.blue),
                Icon(Icons.more_vert, color: Colors.grey),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  if (index % 2 == 0) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Column(
                        spacing: 4,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                            ),
                            child: Text("Yes"),
                          ),
                          Text(
                            "10:15",
                            style: TextStyle(fontSize: 11, color: Colors.grey),
                          ),
                        ],
                      ),
                    );
                  }
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      spacing: 4,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: DoctorAppTheme.accentColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                            ),
                          ),
                          child: Text(
                            "Yes",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Text(
                          "10:15",
                          style: TextStyle(fontSize: 11, color: Colors.grey),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.attach_file, color: Colors.blue),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Wirte a message",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: DoctorAppTheme.accentColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.send),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
