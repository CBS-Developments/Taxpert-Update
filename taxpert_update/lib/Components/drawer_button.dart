import 'package:flutter/material.dart';
import 'package:taxpert_update/Sizes/dashboard_sizes.dart';

import 'colors.dart';

class CustomDrawerButton extends StatelessWidget {
  final Function()? onTap;
  final Widget child;
  final Color fillColor;

  const CustomDrawerButton({Key? key, this.onTap, required this.child, required this.fillColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: drawerButtonHeight(context),
         width: drawerButtonWidth(context),
        decoration: BoxDecoration(
          color: fillColor,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            // color: AppColor.highLightGreen,
            color: Colors.black,
            width: 1.0,
          ),
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
