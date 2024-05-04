import 'package:flutter/material.dart';

class SizeConfig {
  static const double desktop = 1200;
  static const  double tablet = 800;
  static late double width, hight;
  static init(BuildContext context){
    width = MediaQuery.of(context).size.width;
    hight = MediaQuery.of(context).size.height;
  }
}