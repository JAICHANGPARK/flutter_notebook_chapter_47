import 'package:flutter/material.dart';
import 'package:percent_indicator/flutter_percent_indicator.dart';

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
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(6),
            ),
            padding: EdgeInsets.all(12),
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Contract Duration",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                LinearPercentIndicator(
                  padding: EdgeInsets.zero,
                  backgroundColor: Colors.grey[300]!,
                  fillColor: Color.fromRGBO(158, 190, 130, 1),
                  progressColor: Color.fromRGBO(158, 190, 130, 1),
                  percent: .4,
                ),
                Row(
                  spacing: 24,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Column(
                        spacing: 12,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Contract Start",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[400]!,
                            ),
                          ),
                          Text(
                            "17 September 2023",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.arrow_forward, size: 20, color: Colors.grey),
                    Expanded(
                      child: Column(
                        spacing: 12,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Contract Start",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[400]!,
                            ),
                          ),
                          Text(
                            "17 September 2023",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
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
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Contract Position Details"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Job Role"), Text("Project Manager")],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Job Role"), Text("Project Manager")],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Job Role"), Text("Project Manager")],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Job Role"), Text("Project Manager")],
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Contract Position Details"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Job Role"), Text("Project Manager")],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Job Role"), Text("Project Manager")],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Job Role"), Text("Project Manager")],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Job Role"), Text("Project Manager")],
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Contract Position Details"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Job Role"), Text("Project Manager")],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Job Role"), Text("Project Manager")],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Job Role"), Text("Project Manager")],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Job Role"), Text("Project Manager")],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
