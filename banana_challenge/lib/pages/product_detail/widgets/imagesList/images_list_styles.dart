


import 'package:flutter/material.dart';

class ImagesListStyles{
  static const EdgeInsets imagesPadding = EdgeInsets.all(10);
  static const double _multiplicadorImage = 0.35;
  static double imageHeight(context) => MediaQuery.of(context).size.height * _multiplicadorImage/1.5;
  static double imageWidth(context) => MediaQuery.of(context).size.width * _multiplicadorImage ;
}