import 'package:flutter/cupertino.dart';

import 'cal_page_sizes.dart';

double getTabFont(BuildContext context) {
  return (getPageWidth(context) * 0.0043) * (getPageHeight(context) * 0.0043);
}

double tabPadding(BuildContext context) {
  return (getPageWidth(context) * 0.0047) ;
}