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
                spacing: 8,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total Sallary",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "\$12,345.67",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Column(
                    spacing: 8,
                    children: [
                      Container(
                        height: 38,

                        // color: Colors.black,
                        child: Row(
                          spacing: 8,
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 0,
                                    left: 0,
                                    bottom: 0,
                                    right: 100,
                                    child: Container(
                                      // width: 230,
                                      decoration: BoxDecoration(
                                        color: Colors.blue[50]!,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Benefit",
                                        style: TextStyle(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "\$1,000.00",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 38,
                        // color: Colors.black,
                        child: Row(
                          spacing: 8,
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 0,
                                    left: 0,
                                    bottom: 0,
                                    right: 32,
                                    child: Container(
                                      // width: ,
                                      decoration: BoxDecoration(
                                        color: Colors.pink[50]!,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Benefit",
                                        style: TextStyle(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "\$1,000.00",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 38,

                        // color: Colors.black,
                        child: Row(
                          spacing: 8,
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 0,
                                    left: 0,
                                    bottom: 0,
                                    child: Container(
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.orange[50]!,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Benefit",
                                        style: TextStyle(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "\$1,000.00",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 38,

                        // color: Colors.black,
                        child: Row(
                          spacing: 8,
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 0,
                                    left: 0,
                                    bottom: 0,

                                    child: Container(
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.green[50]!,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Expenses",
                                        style: TextStyle(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "\$1,000.00",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 38,

                        // color: Colors.black,
                        child: Row(
                          spacing: 8,
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 0,
                                    left: 0,
                                    bottom: 0,

                                    child: Container(
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.green[50]!,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Other",
                                        style: TextStyle(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "\$1,000.00",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 38,

                        // color: Colors.black,
                        child: Row(
                          spacing: 8,
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 0,
                                    left: 0,
                                    bottom: 0,

                                    child: Container(
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[100]!,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Empoyler Constributions",
                                        style: TextStyle(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "\$1,000.00",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
