import 'package:flutter/material.dart';
import 'package:taxpert_update/Components/tab_bar.dart';
import 'package:taxpert_update/Drawers/drawer.dart';
import 'package:taxpert_update/Sizes/cal_page_sizes.dart';
import 'package:taxpert_update/Sizes/create_account_page_sizes.dart';
import 'package:taxpert_update/Sizes/dashboard_sizes.dart';

import '../Components/my_Appbar.dart';
import '../Sizes/taxpayer_profile_sizes.dart';

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
          DrawerContainer(),

          Container(
            width: rightSideWidth(context),
            height: getPageHeight(context),
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(height: miniBoxHeight(context),),

                TabBarContainer(

                  child: Row(
                    children: [
                      SizedBox(width: smallBoxWidth(context),),
                      Text('Taxperts Easy 04 Steps',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: getTabFont(context),
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),

    );
  }
}