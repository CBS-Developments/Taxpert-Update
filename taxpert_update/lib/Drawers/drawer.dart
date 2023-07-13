import 'package:flutter/material.dart';
import 'package:taxpert_update/Drawers/drawer_button.dart';
import 'package:taxpert_update/Pages/taxpayer_profile_page.dart';
import 'package:taxpert_update/Sizes/cal_page_sizes.dart';
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
      child:Column(
        children: [
          SizedBox(height: miniBoxHeight(context),),

          CustomDrawerButton(
              onTap: (){},
              child: Row(
                children: [
                  Image.asset('Images/icon01.png',
                    height: dashIconHeight(context),),
                  Text('Dashboard',
                    style: TextStyle(
                      color: AppColor.normalGreen,
                      fontSize: getFontLarge(context)
                    ),),
                ],
              ),
              fillColor: Colors.white),

          SizedBox(height: miniBoxHeight(context),),

          CustomDrawerButton(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TaxpayerProfilePage()),
                );
              },
              child: Row(
                children: [
                  Container(
                      height: drawerIconHeight(context),
                      width: drawerIconWidth(context),
                      margin: EdgeInsets.all(drawerIconMargin(context)),
                      child: Image.asset('Images/icon02.png',)),
                  Text('Taxpayer Profile',
                    style: TextStyle(
                        color: AppColor.highLightGreen,
                        fontSize: getFontLarge(context)
                    ),),
                ],
              ),
              fillColor: Colors.black),

          SizedBox(height: miniBoxHeight(context),),

          CustomDrawerButton(
              onTap: (){},
              child: Row(
                children: [
                  Image.asset('Images/icon03.png',
                    height: dashIconHeight(context),),
                  Text('Sources and Income',
                    style: TextStyle(
                        color: AppColor.highLightGreen,
                        fontSize: getFontLarge(context)
                    ),),
                ],
              ),
              fillColor: Colors.black),

          SizedBox(height: miniBoxHeight(context),),

          CustomDrawerButton(
              onTap: (){},
              child: Row(
                children: [
                  Image.asset('Images/icon04.png',
                    height: dashIconHeight(context),),
                  Text('Deductions',
                    style: TextStyle(
                        color: AppColor.highLightGreen,
                        fontSize: getFontLarge(context)
                    ),),
                ],
              ),
              fillColor: Colors.black),

          SizedBox(height: miniBoxHeight(context),),

          CustomDrawerButton(
              onTap: (){},
              child: Row(
                children: [
                  Image.asset('Images/icon04.png',
                    height: dashIconHeight(context),),
                  Text('Tax Computaion',
                    style: TextStyle(
                        color: AppColor.highLightGreen,
                        fontSize: getFontLarge(context)
                    ),),
                ],
              ),
              fillColor: Colors.black),

          SizedBox(height: miniBoxHeight(context),),

          CustomDrawerButton(
              onTap: (){},
              child: Row(
                children: [
                  Image.asset('Images/icon04.png',
                    height: dashIconHeight(context),),
                  Text('Assets',
                    style: TextStyle(
                        color: AppColor.highLightGreen,
                        fontSize: getFontLarge(context)
                    ),),
                ],
              ),
              fillColor: Colors.black),

          SizedBox(height: miniBoxHeight(context),),

          CustomDrawerButton(
              onTap: (){},
              child: Row(
                children: [
                  Image.asset('Images/icon04.png',
                    height: dashIconHeight(context),),
                  Text('Liabilities',
                    style: TextStyle(
                        color: AppColor.highLightGreen,
                        fontSize: getFontLarge(context)
                    ),),
                ],
              ),
              fillColor: Colors.black),

          SizedBox(height: miniBoxHeight(context),),

          CustomDrawerButton(
              onTap: (){},
              child: Row(
                children: [
                  Image.asset('Images/icon04.png',
                    height: dashIconHeight(context),),
                  Text('Upload',
                    style: TextStyle(
                        color: AppColor.highLightGreen,
                        fontSize: getFontLarge(context)
                    ),),
                ],
              ),
              fillColor: Colors.black),

          SizedBox(height: miniBoxHeight(context),),

          CustomDrawerButton(
              onTap: (){},
              child: Row(
                children: [
                  Image.asset('Images/icon04.png',
                    height: dashIconHeight(context),),
                  Text('Report',
                    style: TextStyle(
                        color: AppColor.highLightGreen,
                        fontSize: getFontLarge(context)
                    ),),
                ],
              ),
              fillColor: Colors.black),

          SizedBox(height: miniBoxHeight(context),),



        ],
      ),
    );
  }
}