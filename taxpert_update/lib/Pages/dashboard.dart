import 'package:flutter/material.dart';
import 'package:taxpert_update/Drawers/drawer.dart';

import '../Components/my_Appbar.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context),

      body: Row(
        children: [
          DrawerContainer()
        ],
      ),

    );
  }
}