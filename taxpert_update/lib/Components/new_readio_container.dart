import 'package:flutter/material.dart';

import '../Sizes/login_page_sizes.dart';

class NewRedioContainer extends StatelessWidget {
  const NewRedioContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(textFMargin(context)),
      color: Colors.white70,
      width: textFWidth(context),
      height: textFHeight(context),
      child:
      Row(
        children: [
          Text('Gender:',style: TextStyle(color: Colors.green,fontSize: getFontL(context)),)
        ],
      ),


    );
  }
}
