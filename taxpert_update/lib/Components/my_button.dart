import 'package:flutter/material.dart';

import '../Sizes/cal_page_sizes.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String childText;

  const MyButton({
    Key? key,
    required this.onTap,
    required this.childText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: buttonHeight(context),
        width: buttonWidth(context),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.white,
            width: 1.0,
          ),
        ),
        child: Center(
          child: Text(
            childText,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: buttonFont(context),
            ),
          ),
        ),
      ),
    );
  }
}
