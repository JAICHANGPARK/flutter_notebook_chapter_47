import 'package:flutter/material.dart';

import 'widgets/employee_contract_page.dart';
import 'widgets/employee_payroll_page.dart';
import 'widgets/employee_personal_page.dart';

class EmployeeDetailPage extends StatefulWidget {
  const EmployeeDetailPage({super.key});

  @override
  State<EmployeeDetailPage> createState() => _EmployeeDetailPageState();
}

class _EmployeeDetailPageState extends State<EmployeeDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(28, 33, 45, 1),
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
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                spacing: 12,
                children: [
                  CircleAvatar(radius: 24),
                  Expanded(
                    child: Column(
                      spacing: 8,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dream Walker",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          spacing: 6,
                          children: [
                            Icon(Icons.timer_outlined, size: 18),
                            Text("Fulltime ·"),
                            Icon(Icons.business_center_outlined, size: 18),
                            Text("Onsite"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: DefaultTabController(
                length: 4,
                child: Column(
                  children: [
                    TabBar(
                      tabAlignment: TabAlignment.start,
                      isScrollable: true,
                      tabs: [
                        Tab(text: "Personal info"),
                        Tab(text: "Contract"),
                        Tab(text: "Payroll"),
                        Tab(text: "Time management"),
                      ],
                      indicatorColor: Colors.black,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                    ),

                    Expanded(
                      child: TabBarView(
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          EmployeePersonalPage(),
                          EmployeeContractPage(),
                          EmployeePayrollPage(),
                          Placeholder(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
