
import 'package:flutter/material.dart';

import '../Sizes/login_page_sizes.dart';

class LoginTextField extends StatelessWidget {
  final controller;
  final String labelText;

  const LoginTextField({Key? key, this.controller, required this.labelText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // padding: EdgeInsets.all(TextFContMargin(context)),
        color: Colors.white,
        width: textFWidth(context),
        height: textFHeight(context),

      child: TextField(
        textInputAction: TextInputAction.next,
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: labelText,
        ),
      ),
    );
  }
}