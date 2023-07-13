import 'package:flutter/material.dart';
import 'package:taxpert_update/Sizes/create_account_page_sizes.dart';

import '../Sizes/login_page_sizes.dart';

class NewRedioContainer extends StatelessWidget {
  final int groupValueOne;
  final int valueOne;
  final ValueChanged<int?> onChangedOne;
  final int groupValueTwo;
  final int valueTwo;
  final ValueChanged<int?> onChangedTwo;
  final int groupValueThree;
  final int valueThree;
  final ValueChanged<int?> onChangedThree;

  const NewRedioContainer({Key? key,
    required this.groupValueOne,
    required this.valueOne,
    required this.onChangedOne,
    required this.groupValueTwo,
    required this.valueTwo,
    required this.onChangedTwo,
    required this.groupValueThree,
    required this.valueThree,
    required this.onChangedThree}) : super(key: key);

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
          Text('Gender :',style: TextStyle(color: Colors.green,fontSize: getFontL(context)),),

          SizedBox(width: smallBoxWidth(context),),

          Radio(
            activeColor: Colors.green,
            value: valueOne,
            groupValue: groupValueOne,
            onChanged: onChangedOne,
          ),

          Text('Male',style: TextStyle(color: Colors.green,fontSize: getFontL(context)),),

          SizedBox(width: smallBoxWidth(context),),

          Radio(
            activeColor: Colors.green,
            value: valueTwo,
            groupValue: groupValueTwo,
            onChanged: onChangedTwo,
          ),

          Text('Female',style: TextStyle(color: Colors.green,fontSize: getFontL(context)),),

          SizedBox(width: smallBoxWidth(context),),

          Radio(
            activeColor: Colors.green,
            value: valueThree,
            groupValue: groupValueThree,
            onChanged: onChangedThree,
          ),

          Text('Other',style: TextStyle(color: Colors.green,fontSize: getFontL(context)),),

        ],
      ),


    );
  }
}
