import 'package:flutter/cupertino.dart';

import 'cal_page_sizes.dart';

double createContHeight(BuildContext context) {
  return (getPageHeight(context) * 0.97) ;
}

double createContWidth(BuildContext context) {
  return (getPageWidth(context) * 0.4) ;
}

double createButtonWidth(BuildContext context) {
  return (getPageWidth(context) * 0.12) ;
}

double smallBoxWidth(BuildContext context) {
  return (getPageWidth(context) * 0.01) ;
}