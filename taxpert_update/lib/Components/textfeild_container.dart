import 'package:flutter/material.dart';
import 'package:pattern_formatter/numeric_formatter.dart';

import '../Sizes/cal_page_sizes.dart';

class TexfeildContainer extends StatelessWidget {
  final controller;
  final String hintText;

  const TexfeildContainer({
    super.key,
    required this.controller,
    required this.hintText,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(TextFContMargin(context)),
      color: Colors.white,
      width: textFContWidth(context),
      height: TextContHeight(context),
      child: TextField(
        controller: controller,
        textAlignVertical: TextAlignVertical.bottom,
        textAlign: TextAlign.right,
        maxLines: 1,
        style: TextStyle(
          fontSize: getFontMe(context),
        ),
        keyboardType:
        TextInputType.numberWithOptions(decimal: true, signed: false),
        inputFormatters: [
          ThousandsFormatter(allowFraction: true),
        ],
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green),
            ),
            fillColor: Colors.white,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[500],fontSize: getFontMe(context),)),
      ),
    );
  }
}
