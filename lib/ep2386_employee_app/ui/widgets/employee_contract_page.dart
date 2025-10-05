import 'package:flutter/material.dart';

class EmployeeContractPage extends StatefulWidget {
  const EmployeeContractPage({super.key});

  @override
  State<EmployeeContractPage> createState() => _EmployeeContractPageState();
}

class _EmployeeContractPageState extends State<EmployeeContractPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ],
      ),
    );
  }
}
