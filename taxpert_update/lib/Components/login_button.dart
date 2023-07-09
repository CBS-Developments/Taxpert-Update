import 'package:flutter/material.dart';

import '../Sizes/cal_page_sizes.dart';
import '../Sizes/login_page_sizes.dart';

class LoginButton extends StatelessWidget {

  final Function()? onTap;
  final String childText;
  final width;
  const LoginButton({Key? key, this.onTap, required this.childText, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: loginButtonHeight(context),
        // width: loginButtonWidth(context),
        width: width,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.black,
            width: 1.0,
          ),
        ),
        child: Center(
          child: Text(
            childText,
            style: TextStyle(
              color: Colors.black,
              // fontWeight: FontWeight.bold,
              fontSize: getFontL(context),
            ),
          ),
        ),
      ),
    );
  }
}
