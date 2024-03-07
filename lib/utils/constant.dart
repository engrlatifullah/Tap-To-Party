import 'package:flutter/material.dart';

getHeight(BuildContext context, {required double height}) {
  return MediaQuery.sizeOf(context).height;
}

getWidth(BuildContext context, {required double width}) {
  return MediaQuery.sizeOf(context).width * width;
}
