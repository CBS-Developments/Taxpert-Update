import 'package:flutter/material.dart';

import '../Sizes/cal_page_sizes.dart';


class TextContainer extends StatelessWidget {
  final String childText;
  final double fontSize;
  final Color textColor;

  const TextContainer({

    Key? key, required this.childText, required this.fontSize, required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(TextContMargin(context)),
      color: Colors.white,
      width: TextContWidth(context),
      height: TextContHeight(context),
      child: Text(childText,
        style: TextStyle(fontSize: fontSize ,fontWeight: FontWeight.bold,color: textColor),
      ),
    );
  }
}
