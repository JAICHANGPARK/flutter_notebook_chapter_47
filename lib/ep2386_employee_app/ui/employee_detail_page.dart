import 'package:flutter/material.dart';

class EmployeeDetailPage extends StatefulWidget {
  const EmployeeDetailPage({super.key});

  @override
  State<EmployeeDetailPage> createState() => _EmployeeDetailPageState();
}

class _EmployeeDetailPageState extends State<EmployeeDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromRGBO(28, 33, 45, 1),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Employee details"),
        foregroundColor: Colors.white,
        backgroundColor: Color.fromRGBO(28, 33, 45, 1),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
        topRight: Radius.circular(12),
            topLeft: Radius.circular(12),
          )
        ),
      ),
    );
  }
}
