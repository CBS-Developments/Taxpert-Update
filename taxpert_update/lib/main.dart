import 'package:flutter/material.dart';
import 'package:taxpert_update/Pages/dashboard.dart';

import 'Pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LoginPage(),
      home: DashboardPage(),
    );
  }
}
