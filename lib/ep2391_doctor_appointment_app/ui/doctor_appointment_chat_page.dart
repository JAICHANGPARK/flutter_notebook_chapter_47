import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_47/ep2391_doctor_appointment_app/model/chat_message.dart';

import '../theme.dart';

class DoctorAppointmentChatPage extends StatefulWidget {
  const DoctorAppointmentChatPage({super.key});

  @override
  State<DoctorAppointmentChatPage> createState() =>
      _DoctorAppointmentChatPageState();
}

class _DoctorAppointmentChatPageState extends State<DoctorAppointmentChatPage> {
  List<ChatMessage> messages = [
    /// using gemini
    // 1. Patient describes the primary issue.
    ChatMessage(
      msg:
          "I have a sudden sharp pain in my lower back, and it seems to be getting worse.",
      isRead: true,
      isSender: true,
    ),

    // 2. Clinic asks for necessary booking information.
    ChatMessage(
      msg:
          "I'm sorry to hear that. For better assistance, what is your date of birth and preferred time to visit?",
      isRead: true,
      isSender: false,
    ),

    // 3. Patient provides details and availability.
    ChatMessage(
      msg: "My DOB is 12/05/1990. I could come in anytime before 2 PM today.",
      isRead: true,
      isSender: true,
    ),

    // 4. Clinic suggests the available slot.
    ChatMessage(
      msg:
          "We can fit you in with Dr. Green at 1:15 PM. Please arrive 15 minutes early for paperwork.",
      isRead: true,
      isSender: false,
    ),

    // 5. Patient confirms the time and asks about prerequisites.
    ChatMessage(
      msg:
          "1:15 PM works for me. Will I need to bring any recent X-rays or reports related to this?",
      isRead: true,
      isSender: true,
    ),

    // 6. Clinic clarifies the need for documentation.
    ChatMessage(
      msg:
          "If you have any, yes, please bring them. Otherwise, we can take new ones here if needed during your examination.",
      isRead: true,
      isSender: false,
    ),

    // 7. Patient confirms they have a report.
    ChatMessage(
      msg:
          "Okay, I'll make sure to bring the report from my previous visit to a chiropractor last month.",
      isRead: true,
      isSender: true,
    ),

    // 8. Clinic confirms the appointment and expresses anticipation.
    ChatMessage(
      msg:
          "Excellent. Your appointment is confirmed for 1:15 PM. We look forward to seeing you then.",
      isRead: true,
      isSender: false,
    ),

    // 9. Patient asks a final, logistical question (Unread by Doctor).
    ChatMessage(
      msg:
          "Just a quick question: Is parking available near the clinic, or should I take public transport?",
      isRead: false, // simulating a message just sent
      isSender: true,
    ),

    // 10. Clinic answers the logistical question (Unread by Patient).
    ChatMessage(
      msg:
          "Yes, there is a dedicated patient lot across the street from the main entrance. You should be fine.",
      isRead: false, // simulating a message just received
      isSender: false,
    ),
  ];

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
                padding: EdgeInsets.zero,
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  final item = messages[index];
                  if (!item.isSender) {
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
                            child: Text(item.msg),
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
                            item.msg,
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
