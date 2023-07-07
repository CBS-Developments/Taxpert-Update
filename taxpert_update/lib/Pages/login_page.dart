import 'package:flutter/material.dart';
import 'package:taxpert_update/Sizes/login_page_sizes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:
        BoxDecoration(
            image: DecorationImage(
                image: Image.asset("Images/back.jpg").image, fit: BoxFit.cover),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.grey,
              width: getPageHalf(context),
              height: getPageHeight(context),
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

                Text('Go Ahead & Login',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize:getFontXXXL(context)
                  ),),

                SizedBox(
                  height: sizeBoxLHeight(context),
                ),

                Text('It takes a couples of seconds to login your account',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize:getFontXL(context)
                  ),),

                SizedBox(
                  height: sizeBoxXLHeight(context),
                ),

                Container(
                  width: getPageHalf(context),
                  height: getPageHeight(context),
                  color: Colors.grey,
                ),


              ],
            )

          ],
        ),
      ),
    );
  }
}
