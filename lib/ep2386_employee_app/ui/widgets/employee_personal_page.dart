import 'package:flutter/material.dart';

class EmployeePersonalPage extends StatefulWidget {
  const EmployeePersonalPage({super.key});

  @override
  State<EmployeePersonalPage> createState() => _EmployeePersonalPageState();
}

class _EmployeePersonalPageState extends State<EmployeePersonalPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 16,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Basic Information",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Row(
                spacing: 8,
                children: [
                  Icon(Icons.phone_android, size: 20, color: Colors.grey),
                  Text("Phone number", style: TextStyle(color: Colors.grey)),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.blue,
                    ),
                    child: Text(
                      "+00-123-456-789",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              Row(
                spacing: 8,
                children: [
                  Icon(Icons.email_outlined, size: 20),
                  Text("Email"),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.blue,
                    ),
                    child: Text("example@sample.com"),
                  ),
                ],
              ),
              Row(
                spacing: 8,
                children: [
                  Icon(Icons.person, size: 20),
                  Text("Full name"),
                  Spacer(),
                  Container(
                    decoration: ShapeDecoration(shape: StadiumBorder()),
                    child: Text(
                      "Dream Walker",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
