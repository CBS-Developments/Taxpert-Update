import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taxpert_update/Sizes/cal_page_sizes.dart';
import 'package:taxpert_update/Sizes/dashboard_sizes.dart';

class DrawerContainer extends StatelessWidget {
  const DrawerContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: drawerWidth(context),
      height: getPageHeight(context),
    );
  }
}
