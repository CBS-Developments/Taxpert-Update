import 'package:flutter/material.dart';

import '../Sizes/login_page_sizes.dart';

class LoginGlassBox extends StatelessWidget {
  const LoginGlassBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ContWidth(context),
      height: imageContHeight(context),
      color: Colors.white,
    );
  }
}
