import 'package:flutter/material.dart';

class EmployeePayrollPage extends StatefulWidget {
  const EmployeePayrollPage({super.key});

  @override
  State<EmployeePayrollPage> createState() => _EmployeePayrollPageState();
}

class _EmployeePayrollPageState extends State<EmployeePayrollPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[200]!),
              ),
              padding: EdgeInsets.all(16),
              width: double.infinity,
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Total Sallary"),
                  Text("\$12,345.67")

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
