import 'package:flutter/material.dart';
import 'package:taxpert_update/Sizes/dashboard_sizes.dart';

import '../Sizes/taxpayer_profile_sizes.dart';

class TabBarContainer extends StatelessWidget {
  final Widget child;

  const TabBarContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      padding: EdgeInsets.all(tabPadding(context)),
      height: tabBarHeight(context),
      width: tabBarWidth(context),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        // shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            offset: Offset(3, 3),
            blurRadius: 5,
            spreadRadius: 1,
          ),

          BoxShadow(
            color: Colors.grey.shade400,
            offset: Offset(-3, -3),
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ]
      ),
    );
  }
}
