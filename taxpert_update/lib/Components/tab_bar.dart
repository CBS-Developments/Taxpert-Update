import 'package:flutter/material.dart';
import 'package:taxpert_update/Sizes/dashboard_sizes.dart';

class TabBarContainer extends StatelessWidget {
  const TabBarContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: tabBarHeight(context),
      width: tabBarWidth(context),
      color: Colors.white,
    );
  }
}
