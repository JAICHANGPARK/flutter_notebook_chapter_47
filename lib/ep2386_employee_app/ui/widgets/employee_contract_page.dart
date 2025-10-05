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
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Contract Duration"),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Column(
                        spacing: 12,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Contract Start"),
                          Text("17 September 2023"),
                        ],
                      ),
                    ),
                    Icon(Icons.arrow_forward,size: 18,),
                    Expanded(child: Column(
                      spacing: 12,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Contract Start"),
                        Text("17 September 2023"),
                      ],
                    )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
