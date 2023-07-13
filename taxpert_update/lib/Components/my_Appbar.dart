import 'package:flutter/material.dart';
import 'package:taxpert_update/Sizes/create_account_page_sizes.dart';

import '../Sizes/dashboard_sizes.dart';

PreferredSizeWidget myAppBar(BuildContext context) {
  return PreferredSize(
    preferredSize: Size.fromHeight(appBarHeight(context)),
    child: AppBar(
      backgroundColor: Colors.black,
      automaticallyImplyLeading: false,
      title: Text(
        'Taxperts',
        style: TextStyle(
          fontSize: appBarFont(context),
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        Align(
          alignment: Alignment.center,
          child: Text(
            'Profile Name',
            style: TextStyle(
              fontSize: appBarFont(context),
              color: Colors.white,
              // fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          width: smallBoxWidth(context),
        ),
        IconButton(
          iconSize: appBarIconSize(context),
          onPressed: () {},
          icon: Icon(
            Icons.person_3_outlined,
            color: Colors.white,
          ),
          tooltip: 'View Profile',
        ),
        SizedBox(
          width: smallBoxWidth(context),
        ),
      ],
    ),
  );
}
