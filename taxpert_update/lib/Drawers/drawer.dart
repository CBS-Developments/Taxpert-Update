import 'package:flutter/material.dart';
import 'package:taxpert_update/Drawers/drawer_button.dart';
import 'package:taxpert_update/Pages/taxpayer_profile_page.dart';
import 'package:taxpert_update/Sizes/cal_page_sizes.dart';
import 'package:taxpert_update/Sizes/create_account_page_sizes.dart';
import 'package:taxpert_update/Sizes/dashboard_sizes.dart';

import '../Components/colors.dart';

class DrawerContainer extends StatelessWidget {
  const DrawerContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: drawerWidth(context),
      height: getPageHeight(context),
      child: Column(
        children: [
          SizedBox(
            height: miniBoxHeight(context),
          ),
          CustomDrawerButton(
              onTap: () {},
              child:
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.dashboard_rounded,
                    color: AppColor.normalGreen,
                    size: drawerIconSize(context),
                  ),

                  SizedBox(width: drawerSizeBoxWidth(context),),

                  Text(
                    'Dashboard',
                    style: TextStyle(
                        color: AppColor.normalGreen,
                        fontSize: getFontLarge(context)),
                  ),
                ],
              ),
              fillColor: Colors.white),
          SizedBox(
            height: miniBoxHeight(context),
          ),
          CustomDrawerButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TaxpayerProfilePage()),
                );
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    color: AppColor.highLightGreen,
                    size: drawerIconSize(context),
                  ),

                  SizedBox(width: drawerSizeBoxWidth(context),),

                  Text(
                    'Taxpayer Profile',
                    style: TextStyle(
                        color: AppColor.highLightGreen,
                        fontSize: getFontLarge(context)),
                  ),
                ],
              ),
              fillColor: Colors.black),
          SizedBox(
            height: miniBoxHeight(context),
          ),
          CustomDrawerButton(
              onTap: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.monetization_on_rounded,
                    color: AppColor.highLightGreen,
                    size: drawerIconSize(context),
                  ),

                  SizedBox(width: drawerSizeBoxWidth(context),),
                  Text(
                    'Sources and Income',
                    style: TextStyle(
                        color: AppColor.highLightGreen,
                        fontSize: getFontLarge(context)),
                  ),
                ],
              ),
              fillColor: Colors.black),
          SizedBox(
            height: miniBoxHeight(context),
          ),
          CustomDrawerButton(
              onTap: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.remove_circle,
                    color: AppColor.highLightGreen,
                    size: drawerIconSize(context),
                  ),

                  SizedBox(width: drawerSizeBoxWidth(context),),
                  Text(
                    'Deductions',
                    style: TextStyle(
                        color: AppColor.highLightGreen,
                        fontSize: getFontLarge(context)),
                  ),
                ],
              ),
              fillColor: Colors.black),
          SizedBox(
            height: miniBoxHeight(context),
          ),
          CustomDrawerButton(
              onTap: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.insert_chart_rounded,
                    color: AppColor.highLightGreen,
                    size: drawerIconSize(context),
                  ),

                  SizedBox(width: drawerSizeBoxWidth(context),),
                  Text(
                    'Tax Computaion',
                    style: TextStyle(
                        color: AppColor.highLightGreen,
                        fontSize: getFontLarge(context)),
                  ),
                ],
              ),
              fillColor: Colors.black),
          SizedBox(
            height: miniBoxHeight(context),
          ),
          CustomDrawerButton(
              onTap: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.web_asset_rounded,
                    color: AppColor.highLightGreen,
                    size: drawerIconSize(context),
                  ),

                  SizedBox(width: drawerSizeBoxWidth(context),),
                  Text(
                    'Assets',
                    style: TextStyle(
                        color: AppColor.highLightGreen,
                        fontSize: getFontLarge(context)),
                  ),
                ],
              ),
              fillColor: Colors.black),
          SizedBox(
            height: miniBoxHeight(context),
          ),
          CustomDrawerButton(
              onTap: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.local_activity_rounded,
                    color: AppColor.highLightGreen,
                    size: drawerIconSize(context),
                  ),

                  SizedBox(width: drawerSizeBoxWidth(context),),
                  Text(
                    'Liabilities',
                    style: TextStyle(
                        color: AppColor.highLightGreen,
                        fontSize: getFontLarge(context)),
                  ),
                ],
              ),
              fillColor: Colors.black),
          SizedBox(
            height: miniBoxHeight(context),
          ),
          CustomDrawerButton(
              onTap: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.upload_rounded,
                    color: AppColor.highLightGreen,
                    size: drawerIconSize(context),
                  ),

                  SizedBox(width: drawerSizeBoxWidth(context),),
                  Text(
                    'Upload',
                    style: TextStyle(
                        color: AppColor.highLightGreen,
                        fontSize: getFontLarge(context)),
                  ),
                ],
              ),
              fillColor: Colors.black),
          SizedBox(
            height: miniBoxHeight(context),
          ),
          CustomDrawerButton(
              onTap: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.report,
                    color: AppColor.highLightGreen,
                    size: drawerIconSize(context),
                  ),

                  SizedBox(width: drawerSizeBoxWidth(context),),
                  Text(
                    'Report',
                    style: TextStyle(
                        color: AppColor.highLightGreen,
                        fontSize: getFontLarge(context)),
                  ),
                ],
              ),
              fillColor: Colors.black),
          SizedBox(
            height: miniBoxHeight(context),
          ),
        ],
      ),
    );
  }
}
