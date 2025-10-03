import 'package:flutter/material.dart';

import 'ui/employee_detail_page.dart';

class EmployeeApp extends StatelessWidget {
  const EmployeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EmployeeDetailPage(),
    );
  }
}
