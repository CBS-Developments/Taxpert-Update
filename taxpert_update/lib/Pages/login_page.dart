import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:stroke_text/stroke_text.dart';
import 'package:taxpert_update/Components/login_glass_box.dart';
import 'package:taxpert_update/Components/login_textfeild.dart';
import 'package:taxpert_update/Pages/calculator_page.dart';
import 'package:taxpert_update/Sizes/login_page_sizes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: Image.asset("Images/back2.jpg").image, fit: BoxFit.cover),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: getPageHalf(context),
              height: getPageHeight(context),
              child: Stack(
                children: [
                  BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 1,
                      sigmaY: 1,
                    ),
                    child: Container(),
                  ),
                ],
              ),
            ),

            VerticalDivider(
              width: 25,
              thickness: 2,
              endIndent: 20,
              indent: 20,
              color: Colors.black,
            ),

            // Container(
            //   width: getPageHalf(context),
            //   height: getPageHeight(context),
            //   color: Colors.grey,
            // ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: sizeBoxXLHeight(context),
                ),

                // Text('Go Ahead & Login',
                //   style: TextStyle(
                //
                //       fontWeight: FontWeight.bold,
                //       color: Colors.green,
                //       fontSize:getFontXXXL(context)
                //   ),),

                StrokeText(
                  text: "Go Ahead & Login",
                  textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: getFontXXXL(context),
                      color: Colors.green),
                  strokeColor: Colors.white,
                  strokeWidth: 2.5,
                ),

                SizedBox(
                  height: sizeBoxLHeight(context),
                ),

                // Text('It takes a couples of seconds to login your account',
                //   style: TextStyle(
                //       fontWeight: FontWeight.bold,
                //       color: Colors.black87,
                //       fontSize:getFontXL(context)
                //   ),),

                StrokeText(
                  text: "It takes a couples of seconds to login your account",
                  textStyle: TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontSize: getFontXL(context),
                      color: Colors.white),
                  strokeColor: Colors.black,
                  strokeWidth: 00.8,
                ),

                SizedBox(
                  height: sizeBoxXLHeight(context),
                ),

                // Container(
                //   width: getPageHalf(context),
                //   height: getPageHeight(context),
                //   color: Colors.grey,
                // ),

                LoginGlassBox(
                  width: ContWidth(context),
                  height: imageContHeight(context),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: sizeBoxXLHeight(context),
                        ),
                        Text(
                          'User Login',
                          style: TextStyle(
                            color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: getFontxXL(context)),
                        ),

                        SizedBox(
                          height: sizeBoxXLHeight(context),
                        ),

                        LoginTextField(labelText: "User Name",),

                        SizedBox(
                          height: sizeBoxXLHeight(context),
                        ),

                        LoginTextField(labelText: "Password",),


                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: sizeBoxLHeight(context),
                ),


                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CalculatorPage()),
                    );},
                  child: LoginGlassBox(
                    width: ContWidth(context),
                    height: calContHeight(context),
                    child: Center(
                      child: Text(
                        'Tax Calculator',
                        style: TextStyle(
                          color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: getFontxXL(context)),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
