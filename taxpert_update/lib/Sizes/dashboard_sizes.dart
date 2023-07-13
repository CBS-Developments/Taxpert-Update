

import 'package:flutter/cupertino.dart';

import 'cal_page_sizes.dart';

double appBarHeight(BuildContext context) {
  return (getPageHeight(context) * 0.06) ;
}

double appBarFont(BuildContext context) {
  return (getPageWidth(context) * 0.0041) * (getPageHeight(context) * 0.0041);
}

double appBarIconSize(BuildContext context) {
  return (getPageHeight(context) * 0.031) ;
}