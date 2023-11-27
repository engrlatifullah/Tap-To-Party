
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

navigateToPage({required BuildContext context,required Widget pageName}){
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
    return pageName;
  }));
}