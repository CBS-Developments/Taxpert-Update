import 'package:flutter/material.dart';

import '../Sizes/dashboard_sizes.dart';



PreferredSizeWidget myAppBar(BuildContext context) {
  return PreferredSize(
    preferredSize: Size.fromHeight(appBarHeight(context)),
    child: AppBar(
      backgroundColor: Colors.white,
      title: Text(
        'CBS Task System',
        style: TextStyle(
          fontSize: appBarFont(context),
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}