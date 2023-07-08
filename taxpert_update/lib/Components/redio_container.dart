import 'package:flutter/material.dart';

import '../Sizes/cal_page_sizes.dart';

class RedioContainer extends StatelessWidget {
  final int groupValue;
  final int value;
  final ValueChanged<int?> onChanged;
  const RedioContainer({Key? key, required this.groupValue, required this.onChanged, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: secTextWidth(context),
      height: secTextHeight(context),
      child:Align(
        alignment: Alignment.bottomCenter,
        child: Radio(
          activeColor: Colors.green,
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
