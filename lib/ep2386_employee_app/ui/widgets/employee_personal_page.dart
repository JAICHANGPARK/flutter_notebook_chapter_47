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
        Text("Basic Information"),
        Row(
          children: [
            Icon(Icons.phone_android),
            Text("Phone number"),
            Container(
              decoration: ShapeDecoration(shape: StadiumBorder()),
              child: Text("+00-123-456-789"),
            ),
          ],
        ),
        Row(
          children: [
            Icon(Icons.email_outlined, size: 16),
            Text("Email"),
            Container(
              decoration: ShapeDecoration(shape: StadiumBorder()),
              child: Text("example@sample.com"),
            ),
          ],
        ),
      ],
    );
  }
}
