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
              Text("Basic Information", style: TextStyle(fontSize: 18)),
              Row(
                spacing: 8,
                children: [
                  Icon(Icons.phone_android, size: 20),
                  Text("Phone number"),
                  Container(
                    decoration: ShapeDecoration(shape: StadiumBorder()),
                    child: Text("+00-123-456-789"),
                  ),
                ],
              ),
              Row(
                spacing: 8,
                children: [
                  Icon(Icons.email_outlined, size: 20),
                  Text("Email"),
                  Container(
                    decoration: ShapeDecoration(shape: StadiumBorder()),
                    child: Text("example@sample.com"),
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
