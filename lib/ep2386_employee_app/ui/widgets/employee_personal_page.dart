import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
                      color: Color.fromRGBO(236, 244, 247, 1),
                    ),
                    child: Text(
                      "+00-123-456-789",
                      style: TextStyle(color: Color.fromRGBO(63, 138, 181, 1)),
                    ),
                  ),
                ],
              ),
              Row(
                spacing: 8,
                children: [
                  Icon(Icons.email_outlined, size: 20, color: Colors.grey),
                  Text("Email", style: TextStyle(color: Colors.grey)),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color.fromRGBO(236, 244, 247, 1),
                    ),
                    child: Text(
                      "example@sample.com",
                      style: TextStyle(color: Color.fromRGBO(63, 138, 181, 1)),
                    ),
                  ),
                ],
              ),
              Row(
                spacing: 8,
                children: [
                  Icon(Icons.person, size: 20, color: Colors.grey),
                  Text("Full name", style: TextStyle(color: Colors.grey)),
                  Spacer(),
                  Container(
                    decoration: ShapeDecoration(shape: StadiumBorder()),
                    child: Text(
                      "Dream Walker",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                spacing: 8,
                children: [
                  Icon(Icons.phone_android, size: 20, color: Colors.grey),
                  Text("Martial status", style: TextStyle(color: Colors.grey)),
                  Spacer(),
                  Container(
                    decoration: ShapeDecoration(shape: StadiumBorder()),
                    child: Text(
                      "Single",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                spacing: 8,
                children: [
                  Icon(Icons.group, size: 20, color: Colors.grey),
                  Text("Gender", style: TextStyle(color: Colors.grey)),
                  Spacer(),
                  Container(
                    decoration: ShapeDecoration(shape: StadiumBorder()),
                    child: Text(
                      "Male",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                spacing: 8,
                children: [
                  Icon(Icons.cake_outlined, size: 20, color: Colors.grey),
                  Text("Birthday", style: TextStyle(color: Colors.grey)),
                  Spacer(),
                  Container(
                    decoration: ShapeDecoration(shape: StadiumBorder()),
                    child: Text(
                      "01 Jan 1900",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                spacing: 8,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 20,
                    color: Colors.grey,
                  ),
                  Text("Living Address", style: TextStyle(color: Colors.grey)),
                  Spacer(),
                  Container(
                    decoration: ShapeDecoration(shape: StadiumBorder()),
                    child: Text(
                      textAlign: TextAlign.right,
                      "1234 Washington Ave.\nManchester, Kentucky 12345",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              Text(
                "Address Information",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  spacing: 4,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                      maxLines: 1,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                      maxLines: 3,
                      style: TextStyle(color: Colors.grey),
                    ),
                    Gap(24),
                    Row(
                      children: [
                        Text(
                          "View on Map",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_right),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
